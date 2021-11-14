{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Types
    (
    -- * Service Configuration
      gamesService

    -- * OAuth Scopes
    , gamesScope
    , driveAppDataScope

    -- * PlayersListCollection
    , PlayersListCollection (..)

    -- * LeaderboardEntryTimeSpan
    , LeaderboardEntryTimeSpan (..)

    -- * PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- * EventBatchRecordFailureFailureCause
    , EventBatchRecordFailureFailureCause (..)

    -- * Snapshot
    , Snapshot
    , snapshot
    , sLastModifiedMillis
    , sKind
    , sProgressValue
    , sUniqueName
    , sCoverImage
    , sId
    , sDurationMillis
    , sTitle
    , sType
    , sDescription
    , sDriveId

    -- * ScoresListCollection
    , ScoresListCollection (..)

    -- * PlayerEvent
    , PlayerEvent
    , playerEvent
    , peKind
    , peNumEvents
    , peFormattedNumEvents
    , peDefinitionId
    , pePlayerId

    -- * ApplicationsGetEndPointEndPointType
    , ApplicationsGetEndPointEndPointType (..)

    -- * StatsResponse
    , StatsResponse
    , statsResponse
    , srTotalSpendNext28Days
    , srDaysSinceLastPlayed
    , srKind
    , srSpendPercentile
    , srNumPurchases
    , srNumSessions
    , srHighSpenderProbability
    , srAvgSessionLengthMinutes
    , srNumSessionsPercentile
    , srChurnProbability
    , srSpendProbability

    -- * PlayerLeaderboardScore
    , PlayerLeaderboardScore
    , playerLeaderboardScore
    , plsScoreTag
    , plsScoreString
    , plsKind
    , plsScoreValue
    , plsTimeSpan
    , plsFriendsRank
    , plsPublicRank
    , plsSocialRank
    , plsLeaderboardId
    , plsWriteTimestamp

    -- * Application
    , Application
    , application
    , aThemeColor
    , aLeaderboardCount
    , aKind
    , aCategory
    , aName
    , aEnabledFeatures
    , aInstances
    , aAuthor
    , aId
    , aAchievementCount
    , aAssets
    , aDescription
    , aLastUpdatedTimestamp

    -- * ApplicationCategory
    , ApplicationCategory
    , applicationCategory
    , acSecondary
    , acKind
    , acPrimary

    -- * PlayerScoreTimeSpan
    , PlayerScoreTimeSpan (..)

    -- * PlayerScoreListResponse
    , PlayerScoreListResponse
    , playerScoreListResponse
    , pslrSubmittedScores
    , pslrKind

    -- * AchievementUpdateResponse
    , AchievementUpdateResponse
    , achievementUpdateResponse
    , aurUpdateOccurred
    , aurAchievementId
    , aurKind
    , aurCurrentState
    , aurNewlyUnlocked
    , aurCurrentSteps

    -- * LeaderboardEntry
    , LeaderboardEntry
    , leaderboardEntry
    , leScoreTag
    , leWriteTimestampMillis
    , leKind
    , leScoreValue
    , leFormattedScore
    , leTimeSpan
    , leFormattedScoreRank
    , lePlayer
    , leScoreRank

    -- * SnapshotListResponse
    , SnapshotListResponse
    , snapshotListResponse
    , slrNextPageToken
    , slrKind
    , slrItems

    -- * PlayerLevel
    , PlayerLevel
    , playerLevel
    , plMaxExperiencePoints
    , plKind
    , plMinExperiencePoints
    , plLevel

    -- * ApplicationEnabledFeaturesItem
    , ApplicationEnabledFeaturesItem (..)

    -- * AchievementUpdateMultipleResponse
    , AchievementUpdateMultipleResponse
    , achievementUpdateMultipleResponse
    , aumrKind
    , aumrUpdatedAchievements

    -- * ApplicationsGetPlatformType
    , ApplicationsGetPlatformType (..)

    -- * EventDefinitionListResponse
    , EventDefinitionListResponse
    , eventDefinitionListResponse
    , edlrNextPageToken
    , edlrKind
    , edlrItems

    -- * Category
    , Category
    , category
    , cKind
    , cCategory
    , cExperiencePoints

    -- * InstanceAndroidDetails
    , InstanceAndroidDetails
    , instanceAndroidDetails
    , iadPackageName
    , iadPreferred
    , iadKind
    , iadEnablePiracyCheck

    -- * AchievementDefinitionsListResponse
    , AchievementDefinitionsListResponse
    , achievementDefinitionsListResponse
    , adlrNextPageToken
    , adlrKind
    , adlrItems

    -- * PlayerScoreResponse
    , PlayerScoreResponse
    , playerScoreResponse
    , psrScoreTag
    , psrKind
    , psrFormattedScore
    , psrLeaderboardId
    , psrBeatenScoreTimeSpans
    , psrUnbeatenScores

    -- * LeaderboardListResponse
    , LeaderboardListResponse
    , leaderboardListResponse
    , llrNextPageToken
    , llrKind
    , llrItems

    -- * EventRecordFailureFailureCause
    , EventRecordFailureFailureCause (..)

    -- * PlayerLeaderboardScoreTimeSpan
    , PlayerLeaderboardScoreTimeSpan (..)

    -- * PlayerScore
    , PlayerScore
    , playerScore
    , psScoreTag
    , psScore
    , psKind
    , psFormattedScore
    , psTimeSpan

    -- * AchievementRevealResponseCurrentState
    , AchievementRevealResponseCurrentState (..)

    -- * ProFileSettingsFriendsListVisibility
    , ProFileSettingsFriendsListVisibility (..)

    -- * ScoresListWindowCollection
    , ScoresListWindowCollection (..)

    -- * SnapshotImage
    , SnapshotImage
    , snapshotImage
    , siHeight
    , siKind
    , siURL
    , siMimeType
    , siWidth

    -- * PlayerLeaderboardScoreListResponse
    , PlayerLeaderboardScoreListResponse
    , playerLeaderboardScoreListResponse
    , plslrNextPageToken
    , plslrKind
    , plslrItems
    , plslrPlayer

    -- * InstanceIosDetails
    , InstanceIosDetails
    , instanceIosDetails
    , iidItunesAppId
    , iidPreferredForIPad
    , iidSupportIPhone
    , iidKind
    , iidSupportIPad
    , iidPreferredForIPhone
    , iidBundleIdentifier

    -- * AchievementUpdateRequestUpdateType
    , AchievementUpdateRequestUpdateType (..)

    -- * EventUpdateResponse
    , EventUpdateResponse
    , eventUpdateResponse
    , eurPlayerEvents
    , eurBatchFailures
    , eurEventFailures
    , eurKind

    -- * RevisionCheckResponse
    , RevisionCheckResponse
    , revisionCheckResponse
    , rcrAPIVersion
    , rcrKind
    , rcrRevisionStatus

    -- * Leaderboard
    , Leaderboard
    , leaderboard
    , lKind
    , lIsIconURLDefault
    , lName
    , lId
    , lIconURL
    , lOrder

    -- * MetagameConfig
    , MetagameConfig
    , metagameConfig
    , mcKind
    , mcCurrentVersion
    , mcPlayerLevels

    -- * CategoryListResponse
    , CategoryListResponse
    , categoryListResponse
    , clrNextPageToken
    , clrKind
    , clrItems

    -- * EventDefinition
    , EventDefinition
    , eventDefinition
    , edIsDefaultImageURL
    , edKind
    , edVisibility
    , edImageURL
    , edDisplayName
    , edId
    , edChildEvents
    , edDescription

    -- * RevisionCheckResponseRevisionStatus
    , RevisionCheckResponseRevisionStatus (..)

    -- * SnapshotType
    , SnapshotType (..)

    -- * ScoresListWindowTimeSpan
    , ScoresListWindowTimeSpan (..)

    -- * EventUpdateRequest
    , EventUpdateRequest
    , eventUpdateRequest
    , eUpdateCount
    , eKind
    , eDefinitionId

    -- * PlayerAchievementAchievementState
    , PlayerAchievementAchievementState (..)

    -- * AchievementUnlockResponse
    , AchievementUnlockResponse
    , achievementUnlockResponse
    , achKind
    , achNewlyUnlocked

    -- * ScoresGetTimeSpan
    , ScoresGetTimeSpan (..)

    -- * PlayerAchievement
    , PlayerAchievement
    , playerAchievement
    , paKind
    , paAchievementState
    , paFormattedCurrentStepsString
    , paExperiencePoints
    , paId
    , paCurrentSteps
    , paLastUpdatedTimestamp

    -- * EventDefinitionVisibility
    , EventDefinitionVisibility (..)

    -- * ImageAsset
    , ImageAsset
    , imageAsset
    , iaHeight
    , iaKind
    , iaURL
    , iaWidth
    , iaName

    -- * AchievementUpdateMultipleRequest
    , AchievementUpdateMultipleRequest
    , achievementUpdateMultipleRequest
    , aumruKind
    , aumruUpdates

    -- * LeaderboardOrder
    , LeaderboardOrder (..)

    -- * AchievementUpdateRequest
    , AchievementUpdateRequest
    , achievementUpdateRequest
    , auruAchievementId
    , auruKind
    , auruUpdateType
    , auruSetStepsAtLeastPayload
    , auruIncrementPayload

    -- * ScoresGetIncludeRankType
    , ScoresGetIncludeRankType (..)

    -- * LeaderboardScoreRank
    , LeaderboardScoreRank
    , leaderboardScoreRank
    , lsrNumScores
    , lsrKind
    , lsrFormattedRank
    , lsrFormattedNumScores
    , lsrRank

    -- * Xgafv
    , Xgafv (..)

    -- * PlayerListResponse
    , PlayerListResponse
    , playerListResponse
    , plrNextPageToken
    , plrKind
    , plrItems

    -- * LeaderboardScores
    , LeaderboardScores
    , leaderboardScores
    , lsNextPageToken
    , lsNumScores
    , lsKind
    , lsPlayerScore
    , lsItems
    , lsPrevPageToken

    -- * AchievementDefinition
    , AchievementDefinition
    , achievementDefinition
    , adAchievementType
    , adFormattedTotalSteps
    , adRevealedIconURL
    , adKind
    , adExperiencePoints
    , adInitialState
    , adName
    , adId
    , adIsUnlockedIconURLDefault
    , adTotalSteps
    , adDescription
    , adIsRevealedIconURLDefault
    , adUnlockedIconURL

    -- * AchievementDefinitionAchievementType
    , AchievementDefinitionAchievementType (..)

    -- * EventBatchRecordFailure
    , EventBatchRecordFailure
    , eventBatchRecordFailure
    , ebrfKind
    , ebrfRange
    , ebrfFailureCause

    -- * PlayerFriendStatus
    , PlayerFriendStatus (..)

    -- * AchievementIncrementResponse
    , AchievementIncrementResponse
    , achievementIncrementResponse
    , airKind
    , airNewlyUnlocked
    , airCurrentSteps

    -- * AchievementRevealResponse
    , AchievementRevealResponse
    , achievementRevealResponse
    , arrKind
    , arrCurrentState

    -- * AchievementSetStepsAtLeastResponse
    , AchievementSetStepsAtLeastResponse
    , achievementSetStepsAtLeastResponse
    , assalrKind
    , assalrNewlyUnlocked
    , assalrCurrentSteps

    -- * PlayerAchievementListResponse
    , PlayerAchievementListResponse
    , playerAchievementListResponse
    , palrNextPageToken
    , palrKind
    , palrItems

    -- * EventRecordRequest
    , EventRecordRequest
    , eventRecordRequest
    , errRequestId
    , errKind
    , errCurrentTimeMillis
    , errTimePeriods

    -- * ScoresListTimeSpan
    , ScoresListTimeSpan (..)

    -- * EventPeriodUpdate
    , EventPeriodUpdate
    , eventPeriodUpdate
    , epuKind
    , epuTimePeriod
    , epuUpdates

    -- * ScoreSubmission
    , ScoreSubmission
    , scoreSubmission
    , scoSignature
    , scoScoreTag
    , scoScore
    , scoKind
    , scoLeaderboardId

    -- * EndPoint
    , EndPoint
    , endPoint
    , epURL

    -- * InstanceWebDetails
    , InstanceWebDetails
    , instanceWebDetails
    , iwdPreferred
    , iwdKind
    , iwdLaunchURL

    -- * PlayerExperienceInfo
    , PlayerExperienceInfo
    , playerExperienceInfo
    , peiKind
    , peiCurrentExperiencePoints
    , peiCurrentLevel
    , peiNextLevel
    , peiLastLevelUpTimestampMillis

    -- * GamesAchievementSetStepsAtLeast
    , GamesAchievementSetStepsAtLeast
    , gamesAchievementSetStepsAtLeast
    , gassalKind
    , gassalSteps

    -- * AchievementUpdateResponseCurrentState
    , AchievementUpdateResponseCurrentState (..)

    -- * AchievementDefinitionInitialState
    , AchievementDefinitionInitialState (..)

    -- * Player
    , Player
    , player
    , pBannerURLLandscape
    , pAvatarImageURL
    , pKind
    , pExperienceInfo
    , pName
    , pOriginalPlayerId
    , pDisplayName
    , pTitle
    , pBannerURLPortrait
    , pPlayerId
    , pProFileSettings
    , pFriendStatus

    -- * GamesAchievementIncrement
    , GamesAchievementIncrement
    , gamesAchievementIncrement
    , gaiRequestId
    , gaiKind
    , gaiSteps

    -- * EventChild
    , EventChild
    , eventChild
    , ecKind
    , ecChildId

    -- * ApplicationVerifyResponse
    , ApplicationVerifyResponse
    , applicationVerifyResponse
    , avrKind
    , avrAlternatePlayerId
    , avrPlayerId

    -- * PlayerEventListResponse
    , PlayerEventListResponse
    , playerEventListResponse
    , pelrNextPageToken
    , pelrKind
    , pelrItems

    -- * PlayerScoreResponseBeatenScoreTimeSpansItem
    , PlayerScoreResponseBeatenScoreTimeSpansItem (..)

    -- * ProFileSettings
    , ProFileSettings
    , proFileSettings
    , pfsProFileVisible
    , pfsFriendsListVisibility
    , pfsKind

    -- * EventPeriodRange
    , EventPeriodRange
    , eventPeriodRange
    , eprKind
    , eprPeriodStartMillis
    , eprPeriodEndMillis

    -- * InstancePlatformType
    , InstancePlatformType (..)

    -- * MetagameListCategoriesByPlayerCollection
    , MetagameListCategoriesByPlayerCollection (..)

    -- * AchievementsListState
    , AchievementsListState (..)

    -- * EventRecordFailure
    , EventRecordFailure
    , eventRecordFailure
    , erfKind
    , erfFailureCause
    , erfEventId

    -- * PlayerScoreSubmissionList
    , PlayerScoreSubmissionList
    , playerScoreSubmissionList
    , psslKind
    , psslScores

    -- * Instance
    , Instance
    , instance'
    , iAndroidInstance
    , iKind
    , iWebInstance
    , iIosInstance
    , iName
    , iAcquisitionURI
    , iPlatformType
    , iTurnBasedPlay
    , iRealtimePlay
    ) where

import Network.Google.Games.Types.Product
import Network.Google.Games.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play Game Services. This contains the host and root path used as a starting point for constructing service requests.
gamesService :: ServiceConfig
gamesService
  = defaultService (ServiceId "games:v1")
      "games.googleapis.com"

-- | Create, edit, and delete your Google Play Games activity
gamesScope :: Proxy '["https://www.googleapis.com/auth/games"]
gamesScope = Proxy

-- | See, create, and delete its own configuration data in your Google Drive
driveAppDataScope :: Proxy '["https://www.googleapis.com/auth/drive.appdata"]
driveAppDataScope = Proxy
