??
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.0.02v2.0.0-rc2-26-g64c3d382ca8??
t
dense/kernelVarHandleOp*
shape
:*
_output_shapes
: *
shared_namedense/kernel*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
shared_name
dense/bias*
_output_shapes
: *
shape:*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
dtype0	*
shared_name
SGD/iter*
shape: *
_output_shapes
: 
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
dtype0	*
_output_shapes
: 
f
	SGD/decayVarHandleOp*
shared_name	SGD/decay*
dtype0*
shape: *
_output_shapes
: 
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
dtype0*
_output_shapes
: 
v
SGD/learning_rateVarHandleOp*
shape: *
_output_shapes
: *"
shared_nameSGD/learning_rate*
dtype0
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
shape: *
shared_nameSGD/momentum*
_output_shapes
: *
dtype0
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
R
		variables

trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
6
iter
	decay
learning_rate
momentum

0
1

0
1
 
?
	variables
trainable_variables
metrics
layer_regularization_losses
regularization_losses

layers
non_trainable_variables
 
 
 
 
?
		variables

trainable_variables
metrics
layer_regularization_losses
regularization_losses

layers
non_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
trainable_variables
metrics
 layer_regularization_losses
regularization_losses

!layers
"non_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
 
 
 
 
 
 
 
 
 *
dtype0
~
serving_default_dense_inputPlaceholder*
dtype0*'
_output_shapes
:?????????*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_inputdense/kernel
dense/bias*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*
Tout
2*+
f&R$
"__inference_signature_wrapper_1579*+
_gradient_op_typePartitionedCall-1648*
Tin
2
O
saver_filenamePlaceholder*
shape: *
_output_shapes
: *
dtype0
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOpConst*&
f!R
__inference__traced_save_1675**
config_proto

CPU

GPU 2J 8*
_output_shapes
: *
Tout
2*
Tin

2	*+
_gradient_op_typePartitionedCall-1676
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentum*
_output_shapes
: *)
f$R"
 __inference__traced_restore_1706*+
_gradient_op_typePartitionedCall-1707*
Tin
	2**
config_proto

CPU

GPU 2J 8*
Tout
2??
?
?
?__inference_dense_layer_call_and_return_conditional_losses_1507

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1544

inputs(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputs$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1507*
Tin
2*+
_gradient_op_typePartitionedCall-1513*'
_output_shapes
:??????????
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
"__inference_signature_wrapper_1579
dense_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*(
f#R!
__inference__wrapped_model_1491*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:?????????*
Tin
2*+
_gradient_op_typePartitionedCall-1574?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall: :+ '
%
_user_specified_namedense_input: 
?
?
)__inference_sequential_layer_call_fn_1550
dense_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1545*
Tin
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:?????????*
Tout
2*M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1544?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall: :+ '
%
_user_specified_namedense_input: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1525
dense_input(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2*+
_gradient_op_typePartitionedCall-1513*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1507*'
_output_shapes
:?????????*
Tin
2**
config_proto

CPU

GPU 2J 8?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: :+ '
%
_user_specified_namedense_input: 
?
?
 __inference__traced_restore_1706
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias
assignvariableop_2_sgd_iter 
assignvariableop_3_sgd_decay(
$assignvariableop_4_sgd_learning_rate#
assignvariableop_5_sgd_momentum

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
_output_shapes
:*
dtype0?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
dtypes

2	*,
_output_shapes
::::::L
IdentityIdentityRestoreV2:tensors:0*
_output_shapes
:*
T0y
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0*
_output_shapes
 *
dtype0N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0}
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0*
_output_shapes
 *
dtype0N

Identity_2IdentityRestoreV2:tensors:2*
_output_shapes
:*
T0	{
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0*
dtype0	*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:|
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
_output_shapes
:*
T0?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0*
dtype0*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0*
dtype0*
_output_shapes
 ?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
_output_shapes
: *
T0?

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: "!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2
RestoreV2_1RestoreV2_12
	RestoreV2	RestoreV22(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_5AssignVariableOp_5: : : : :+ '
%
_user_specified_namefile_prefix: : 
?
?
__inference__wrapped_model_1491
dense_input3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:?
sequential/dense/MatMulMatMuldense_input.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
IdentityIdentity!sequential/dense/BiasAdd:output:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp: :+ '
%
_user_specified_namedense_input: 
?
?
)__inference_sequential_layer_call_fn_1567
dense_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1562**
config_proto

CPU

GPU 2J 8*
Tout
2*M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1561*
Tin
2*'
_output_shapes
:??????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall: :+ '
%
_user_specified_namedense_input: 
?
?
__inference__traced_save_1675
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_92270f5891ec4e9688078ee93b70f07d/part*
_output_shapes
: *
dtype0s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
_output_shapes
: *
NL

num_shardsConst*
value	B :*
_output_shapes
: *
dtype0f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0y
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B B B B *
dtype0?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"/device:CPU:0*
dtypes

2	*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 ?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*/
_input_shapes
: ::: : : : : 2
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2_1SaveV2_1: : : : : :+ '
%
_user_specified_namefile_prefix: : 
?
?
)__inference_sequential_layer_call_fn_1608

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*'
_output_shapes
:?????????*
Tout
2**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1544*+
_gradient_op_typePartitionedCall-1545*
Tin
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?	
?
D__inference_sequential_layer_call_and_return_conditional_losses_1591

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?	
?
D__inference_sequential_layer_call_and_return_conditional_losses_1601

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
)__inference_sequential_layer_call_fn_1615

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*'
_output_shapes
:?????????*
Tin
2*+
_gradient_op_typePartitionedCall-1562**
config_proto

CPU

GPU 2J 8*M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1561*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
$__inference_dense_layer_call_fn_1632

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1507*'
_output_shapes
:?????????*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*+
_gradient_op_typePartitionedCall-1513?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1534
dense_input(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tin
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:?????????*+
_gradient_op_typePartitionedCall-1513*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1507*
Tout
2?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: :+ '
%
_user_specified_namedense_input: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1561

inputs(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputs$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1513*
Tin
2*
Tout
2*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1507**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:??????????
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
?__inference_dense_layer_call_and_return_conditional_losses_1625

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*.
_input_shapes
:?????????::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*?
serving_default?
C
dense_input4
serving_default_dense_input:0?????????9
dense0
StatefulPartitionedCall:0?????????tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:?G
?
layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential", "layers": [{"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?
		variables

trainable_variables
regularization_losses
	keras_api
&__call__
*'&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "InputLayer", "name": "dense_input", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": [null, 1], "config": {"batch_input_shape": [null, 1], "dtype": "float32", "sparse": false, "name": "dense_input"}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
(__call__
*)&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 1], "config": {"name": "dense", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}}
I
iter
	decay
learning_rate
momentum"
	optimizer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
metrics
layer_regularization_losses
regularization_losses

layers
non_trainable_variables
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
		variables

trainable_variables
metrics
layer_regularization_losses
regularization_losses

layers
non_trainable_variables
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
:2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
metrics
 layer_regularization_losses
regularization_losses

!layers
"non_trainable_variables
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
)__inference_sequential_layer_call_fn_1550
)__inference_sequential_layer_call_fn_1567
)__inference_sequential_layer_call_fn_1608
)__inference_sequential_layer_call_fn_1615?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_1591
D__inference_sequential_layer_call_and_return_conditional_losses_1534
D__inference_sequential_layer_call_and_return_conditional_losses_1601
D__inference_sequential_layer_call_and_return_conditional_losses_1525?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_1491?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
dense_input?????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_1632?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_1625?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
5B3
"__inference_signature_wrapper_1579dense_input?
)__inference_sequential_layer_call_fn_1550\<?9
2?/
%?"
dense_input?????????
p

 
? "???????????
)__inference_sequential_layer_call_fn_1567\<?9
2?/
%?"
dense_input?????????
p 

 
? "??????????w
$__inference_dense_layer_call_fn_1632O/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_sequential_layer_call_and_return_conditional_losses_1534i<?9
2?/
%?"
dense_input?????????
p 

 
? "%?"
?
0?????????
? ?
)__inference_sequential_layer_call_fn_1615W7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
?__inference_dense_layer_call_and_return_conditional_losses_1625\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1525i<?9
2?/
%?"
dense_input?????????
p

 
? "%?"
?
0?????????
? ?
"__inference_signature_wrapper_1579xC?@
? 
9?6
4
dense_input%?"
dense_input?????????"-?*
(
dense?
dense??????????
__inference__wrapped_model_1491i4?1
*?'
%?"
dense_input?????????
? "-?*
(
dense?
dense??????????
D__inference_sequential_layer_call_and_return_conditional_losses_1601d7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
)__inference_sequential_layer_call_fn_1608W7?4
-?*
 ?
inputs?????????
p

 
? "???????????
D__inference_sequential_layer_call_and_return_conditional_losses_1591d7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? 