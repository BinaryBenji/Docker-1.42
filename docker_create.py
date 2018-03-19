import docker
import sys



#if len(sys.argv) < 3 :
#	print('usage : python docker_create.py --container "container" --ports ""')

client = docker.from_env()



#if (choice == 1)
#contai = client.containers.list()
#ima = client.images.list()

#print("containers : {0} \nimages : {1}".format(contai, ima))


container = client.containers.run('genialnode', ports={777:345}, detach=True)
print (container.logs())

#else
#	print("bye.")