import bpy
import math
import random

for i in range(200):
    bpy.ops.mesh.primitive_cube_add(size = 1, location = (0,0,0))
    obj = bpy.context.active_object
    bpy.context.scene.frame_set(0)
    bpy.ops.anim.keyframe_insert(type = 'Location')
    bpy.ops.anim.keyframe_insert(type = 'Rotation')
    bpy.context.scene.frame_set(200)
    obj.location = (random.randrange(-10,10),random.randrange(-10,10),random.randrange(-10,10))
    obj.rotation_euler = (random.randrange(-10,10),random.randrange(-10,10),random.randrange(-10,10))
    bpy.ops.anim.keyframe_insert(type = 'Location')
    bpy.ops.anim.keyframe_insert(type = 'Rotation')
