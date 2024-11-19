package one_server_one_client.simulations;

import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network Networks
{
    @display("bgb=538,200");
    submodules:
        Configurator: Ipv4FlatNetworkConfigurator {
            @display("p=224,47");
        }
        server: StandardHost {
            @display("p=67,124");
        }
        client: StandardHost {
            @display("p=404,124");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
}

