:collision: convert caffe model which has node.data is none, shell meet:

    Traceback (most recent call last):
     File "./convert.py", line 60, in <module>
      main()
     File "./convert.py", line 56, in main
      args.phase)
     File "./convert.py", line 37, in convert
      src_out.write(transformer.transform_source())
     File "/home/boom/PycharmProjects/caffe-tensorflow/kaffe/tensorflow/transformer.py", line 282, in transform_source
      chains = mapper.map()
     File "/home/boom/PycharmProjects/caffe-tensorflow/kaffe/graph.py", line 288, in map
      mapped_chains.append(self.map_chain(chain))
     File "/home/boom/PycharmProjects/caffe-tensorflow/kaffe/graph.py", line 292, in map_chain
      return [self.map_node(node) for node in chain]
     File "/home/boom/PycharmProjects/caffe-tensorflow/kaffe/graph.py", line 296, in map_node
      mapped_node = map_func(node)
     File "/home/boom/PycharmProjects/caffe-tensorflow/kaffe/tensorflow/transformer.py", line 149, in map_batch_norm
      scale_offset = len(node.data) == 4
    TypeError: object of type 'NoneType' has no len()

SOLVE: modify [caffe-tensorflow/kaffe/transformer.py] line:[149] from

    scale_offset = len(node.data) == 4
    
 to 

    if node.data is not None:
      scale_offset = len(node.data) == 4
    else:
      scale_offset = False
      
:collision: after convert a model which has node.data is None, your model *.py may have batch_norm layer looks like:

    .batch_normalization(scale_offset=False, name='bn2a_branch2c')
 
 the layer definination of batch_norm layer says:
 
    if scale_offset:
     scale = self.make_var('scale', shape=shape)
     offset = self.make_var('offset', shape=shape)
    else:
     scale, offset = (None, None)
                
so you may need to change the layer parameter to:

    .batch_normalization(scale_offset=True, name='bn2a_branch2c')
