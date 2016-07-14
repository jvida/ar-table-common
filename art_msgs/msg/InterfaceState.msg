uint8 interface_type # type of the interface which sent this message

uint8 INT_NON_INTERFACE=0 # could be brain listening on what is going etc.
uint8 INT_PROJECTED=1
uint8 INT_TOUCH_PC=2
uint8 INT_HANDHELD=3
uint8 INT_VR=4
uint8 INT_AR=5

uint8 event_type

uint8 EVT_OBJECT_ID_SELECTED=0 # data
uint8 EVT_OBJECT_TYPE_SELECTED=1 # data
uint8 EVT_OBJECT_ID_UNSELECTED=2 # data
uint8 EVT_OBJECT_TYPE_UNSELECTED=3 # data
uint8 EVT_PROGRAM_TEMPLATE_SELECTED=4 # idata = prog_id
uint8 EVT_POLYGON_POINT_ADDED=6 # points
uint8 EVT_POLYGON=7 # points
uint8 EVT_STATE_LEARNING=8 # idata=[prog_id, inst_id]
uint8 EVT_STATE_PROGRAM_RUNNING=9 # idata=[prog_id, inst_id]
uint8 EVT_PLACE_SELECTED=10 # places
uint8 EVT_PLACE_UNSELECTED=11 # places
uint8 EVT_CLEAR_ALL=12 # clear all selected objects, places etc
uint8 EVT_INT_ENABLED=13 # when some interface claims itself enabled others should set themselves disabled
uint8 EVT_INT_DISABLED=14
uint8 EVT_INT_READY=15 # when interface is fully initialized
uint8 EVT_INT_NOT_READY=16

# TODO programitem: operation type selection

string[] data
int16[] idata

geometry_msgs/PointStamped[] points
geometry_msgs/PoseStamped[] places