#include "common.h"
#include "battle/battle.h"

#define NAMESPACE b_area_trd_part_1_trd_00

EvtScript N(EVS_PreBattle) = {
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_CALL(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PostBattle) = {
    EVT_RETURN
    EVT_END
};

s32 N(ForegroundModels)[] = {
    0x00000009,
    STAGE_MODEL_LIST_END
};

Stage NAMESPACE = {
    .texture = "trd_tex",
    .shape = "trd_bt00_shape",
    .hit = "trd_bt00_hit",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
    .foregroundModelList = N(ForegroundModels),
};
