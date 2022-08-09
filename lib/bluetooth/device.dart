import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothDeviceListEntry extends StatelessWidget {
  final Function onTap;
  final BluetoothDevice device;

  BluetoothDeviceListEntry({this.onTap, @required this.device});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(Icons.devices,color: Colors.black87,),
      title: Text(device.name ?? "Unknown device",style: TextStyle(color: Colors.black)),
      subtitle: Text(device.address.toString(),style: TextStyle(color: Colors.black),),
      trailing: FlatButton(
        child: Container(height: 35,width: 80,
            decoration: BoxDecoration(color: Colors.black45,borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Center(child: Text('Connect',style: TextStyle(fontSize: 20,color: Colors.white),))),
        onPressed: onTap,
      ),
    );
  }
}
