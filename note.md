#调试记录

*3.15*
调试1： 测试monitorEvent内部机制

    void MyMonitorRequester::monitorEvent(MonitorPtr const & monitor)
    {  
        cout << "pass pass go  go " <<endl;
    }
    // 测试发现，会一直loop  cout  
    
****
调试2：测试 monitor->poll() 的内部机制

    void MyMonitorRequester::monitorEvent(MonitorPtr const & monitor)
	{  

	cout << "pass pass go  go " <<endl;
	shared_ptr<MonitorElement> update;
	update = monitor->poll();
    checkUpdate(update->pvStructurePtr);
    epics::pvData::PVUIntArrayPtr pixelsPtr_client = update->pvStructurePtr->getSubField<epics::pvData::PVUIntArray>("pixel.value");
    epics::pvData::PVUIntArrayPtr tofPtr_client = update->pvStructurePtr->getSubField<epics::pvData::PVUIntArray>("time_of_flight.value");
    pixelsData = pixelsPtr_client->view();
    tofData = tofPtr_client->view();

    cout << " the pixels Data is ::  "<< pixelsData<<endl;
    cout <<  " the tof Data is ::" << tofData << endl;
    //测试发现依然可以loop下去，并get到数据

****
测试3：在doMonitor中加入 poll()

     shared_ptr<MonitorElement> update;
     while ((update = monitor->poll()))
       {
          cout<<  "the name:::" << name << endl;
       }
     // 测试返现while循环没有loop起来
     
****
测试4. 使 getPulseData 返回结构体；

    NeutronPulseData MyMonitorRequester::getPulseData()
    {

        cout <<" print the structure::" <<*(mNeutronPulseDataTem.pTimeOfFlight)<<endl;
        return mNeutronPulseDataTem;

    }
    // 可以实现

****
测试5  在doMonitor中加入引用 structure

     shared_ptr<MyMonitorRequester> monitorRequester(new MyMonitorRequester(limit, quiet));
            shared_ptr<Monitor> monitor = channel->createMonitor(monitorRequester, pvRequest);
            // Wait until limit or forever..
            cout<<  "the first struct:::" << *((monitorRequester->mNeutronPulseDataTem).pTimeOfFlight)<< endl;
        // 能运行，但是无法loop  获取实时的数据