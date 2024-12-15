CREATE TABLE IF NOT EXISTS cs_database.game_statistic_flatten
(
    game_id Int64 COMMENT 'идентификатор игры',
    begin_at DateTime COMMENT 'начало игры',    
    year Int32 COMMENT 'год',
    month Int32 COMMENT 'месяц',
    day Int32 COMMENT 'день',
    weekday Int32 COMMENT 'день недели',
    map_id Int64 COMMENT 'идентификатор карты',
    league_id Int64 COMMENT 'идентификатор лиги',
    serie_id Int64 COMMENT 'идентификатор серии',
    serie_tier String COMMENT 'уровень серии',
    tournament_id Int64 COMMENT 'идентификатор турнира',    
    team_id Int64 COMMENT 'идентификатор команды',
    team_opponent_id Int64 COMMENT 'идентификатор команды соперника',
    player_id Int64 COMMENT 'идентификатор игрока',
    player_opponent_id Int64 COMMENT 'идентификатор игрока соперника',
    is_ct Boolean COMMENT 'игра за КТ',
    round Int32 COMMENT 'номер раунда',
    outcome String COMMENT 'результат',
    win Boolean COMMENT 'победа'
) ENGINE = MergeTree()
PARTITION BY toYYYYMM(begin_at)
ORDER BY (game_id, begin_at);