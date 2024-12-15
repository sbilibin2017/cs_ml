from fastapi import APIRouter

router = APIRouter(
    prefix="/ml",
    tags=["ML"],
)


@router.post(path="/")
async def get_team1_with_map_and_start_side_win_probability() -> float:
    return 0.5
