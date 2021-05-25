{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play games service allows developers to enhance games with
-- social leaderboards, achievements, game state, sign-in with Google, and
-- more.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference>
module Network.Google.Games
    (
    -- * Service Configuration
      gamesService

    -- * OAuth Scopes
    , gamesScope
    , driveAppDataScope

    -- * API Declaration
    , GamesAPI

    -- * Resources

    -- ** games.achievementDefinitions.list
    , module Network.Google.Resource.Games.AchievementDefinitions.List

    -- ** games.achievements.increment
    , module Network.Google.Resource.Games.Achievements.Increment

    -- ** games.achievements.list
    , module Network.Google.Resource.Games.Achievements.List

    -- ** games.achievements.reveal
    , module Network.Google.Resource.Games.Achievements.Reveal

    -- ** games.achievements.setStepsAtLeast
    , module Network.Google.Resource.Games.Achievements.SetStepsAtLeast

    -- ** games.achievements.unlock
    , module Network.Google.Resource.Games.Achievements.Unlock

    -- ** games.achievements.updateMultiple
    , module Network.Google.Resource.Games.Achievements.UpdateMultiple

    -- ** games.applications.get
    , module Network.Google.Resource.Games.Applications.Get

    -- ** games.applications.getEndPoint
    , module Network.Google.Resource.Games.Applications.GetEndPoint

    -- ** games.applications.played
    , module Network.Google.Resource.Games.Applications.Played

    -- ** games.applications.verify
    , module Network.Google.Resource.Games.Applications.Verify

    -- ** games.events.listByPlayer
    , module Network.Google.Resource.Games.Events.ListByPlayer

    -- ** games.events.listDefinitions
    , module Network.Google.Resource.Games.Events.ListDefinitions

    -- ** games.events.record
    , module Network.Google.Resource.Games.Events.Record

    -- ** games.leaderboards.get
    , module Network.Google.Resource.Games.Leaderboards.Get

    -- ** games.leaderboards.list
    , module Network.Google.Resource.Games.Leaderboards.List

    -- ** games.metagame.getMetagameConfig
    , module Network.Google.Resource.Games.Metagame.GetMetagameConfig

    -- ** games.metagame.listCategoriesByPlayer
    , module Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer

    -- ** games.players.get
    , module Network.Google.Resource.Games.Players.Get

    -- ** games.players.list
    , module Network.Google.Resource.Games.Players.List

    -- ** games.revisions.check
    , module Network.Google.Resource.Games.Revisions.Check

    -- ** games.scores.get
    , module Network.Google.Resource.Games.Scores.Get

    -- ** games.scores.list
    , module Network.Google.Resource.Games.Scores.List

    -- ** games.scores.listWindow
    , module Network.Google.Resource.Games.Scores.ListWindow

    -- ** games.scores.submit
    , module Network.Google.Resource.Games.Scores.Submit

    -- ** games.scores.submitMultiple
    , module Network.Google.Resource.Games.Scores.SubmitMultiple

    -- ** games.snapshots.get
    , module Network.Google.Resource.Games.Snapshots.Get

    -- ** games.snapshots.list
    , module Network.Google.Resource.Games.Snapshots.List

    -- ** games.stats.get
    , module Network.Google.Resource.Games.Stats.Get

    -- * Types

    -- ** PlayersListCollection
    , PlayersListCollection (..)

    -- ** LeaderboardEntryTimeSpan
    , LeaderboardEntryTimeSpan (..)

    -- ** PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- ** EventBatchRecordFailureFailureCause
    , EventBatchRecordFailureFailureCause (..)

    -- ** Snapshot
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

    -- ** ScoresListCollection
    , ScoresListCollection (..)

    -- ** PlayerEvent
    , PlayerEvent
    , playerEvent
    , peKind
    , peNumEvents
    , peFormattedNumEvents
    , peDefinitionId
    , pePlayerId

    -- ** ApplicationsGetEndPointEndPointType
    , ApplicationsGetEndPointEndPointType (..)

    -- ** StatsResponse
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

    -- ** PlayerLeaderboardScore
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

    -- ** Application
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

    -- ** ApplicationCategory
    , ApplicationCategory
    , applicationCategory
    , acSecondary
    , acKind
    , acPrimary

    -- ** PlayerScoreTimeSpan
    , PlayerScoreTimeSpan (..)

    -- ** PlayerScoreListResponse
    , PlayerScoreListResponse
    , playerScoreListResponse
    , pslrSubmittedScores
    , pslrKind

    -- ** AchievementUpdateResponse
    , AchievementUpdateResponse
    , achievementUpdateResponse
    , aurUpdateOccurred
    , aurAchievementId
    , aurKind
    , aurCurrentState
    , aurNewlyUnlocked
    , aurCurrentSteps

    -- ** LeaderboardEntry
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

    -- ** SnapshotListResponse
    , SnapshotListResponse
    , snapshotListResponse
    , slrNextPageToken
    , slrKind
    , slrItems

    -- ** PlayerLevel
    , PlayerLevel
    , playerLevel
    , plMaxExperiencePoints
    , plKind
    , plMinExperiencePoints
    , plLevel

    -- ** ApplicationEnabledFeaturesItem
    , ApplicationEnabledFeaturesItem (..)

    -- ** AchievementUpdateMultipleResponse
    , AchievementUpdateMultipleResponse
    , achievementUpdateMultipleResponse
    , aumrKind
    , aumrUpdatedAchievements

    -- ** ApplicationsGetPlatformType
    , ApplicationsGetPlatformType (..)

    -- ** EventDefinitionListResponse
    , EventDefinitionListResponse
    , eventDefinitionListResponse
    , edlrNextPageToken
    , edlrKind
    , edlrItems

    -- ** Category
    , Category
    , category
    , cKind
    , cCategory
    , cExperiencePoints

    -- ** InstanceAndroidDetails
    , InstanceAndroidDetails
    , instanceAndroidDetails
    , iadPackageName
    , iadPreferred
    , iadKind
    , iadEnablePiracyCheck

    -- ** AchievementDefinitionsListResponse
    , AchievementDefinitionsListResponse
    , achievementDefinitionsListResponse
    , adlrNextPageToken
    , adlrKind
    , adlrItems

    -- ** PlayerScoreResponse
    , PlayerScoreResponse
    , playerScoreResponse
    , psrScoreTag
    , psrKind
    , psrFormattedScore
    , psrLeaderboardId
    , psrBeatenScoreTimeSpans
    , psrUnbeatenScores

    -- ** LeaderboardListResponse
    , LeaderboardListResponse
    , leaderboardListResponse
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** EventRecordFailureFailureCause
    , EventRecordFailureFailureCause (..)

    -- ** PlayerLeaderboardScoreTimeSpan
    , PlayerLeaderboardScoreTimeSpan (..)

    -- ** PlayerScore
    , PlayerScore
    , playerScore
    , psScoreTag
    , psScore
    , psKind
    , psFormattedScore
    , psTimeSpan

    -- ** AchievementRevealResponseCurrentState
    , AchievementRevealResponseCurrentState (..)

    -- ** ProFileSettingsFriendsListVisibility
    , ProFileSettingsFriendsListVisibility (..)

    -- ** ScoresListWindowCollection
    , ScoresListWindowCollection (..)

    -- ** SnapshotImage
    , SnapshotImage
    , snapshotImage
    , siHeight
    , siKind
    , siURL
    , siMimeType
    , siWidth

    -- ** PlayerLeaderboardScoreListResponse
    , PlayerLeaderboardScoreListResponse
    , playerLeaderboardScoreListResponse
    , plslrNextPageToken
    , plslrKind
    , plslrItems
    , plslrPlayer

    -- ** InstanceIosDetails
    , InstanceIosDetails
    , instanceIosDetails
    , iidItunesAppId
    , iidPreferredForIPad
    , iidSupportIPhone
    , iidKind
    , iidSupportIPad
    , iidPreferredForIPhone
    , iidBundleIdentifier

    -- ** AchievementUpdateRequestUpdateType
    , AchievementUpdateRequestUpdateType (..)

    -- ** EventUpdateResponse
    , EventUpdateResponse
    , eventUpdateResponse
    , eurPlayerEvents
    , eurBatchFailures
    , eurEventFailures
    , eurKind

    -- ** RevisionCheckResponse
    , RevisionCheckResponse
    , revisionCheckResponse
    , rcrAPIVersion
    , rcrKind
    , rcrRevisionStatus

    -- ** Leaderboard
    , Leaderboard
    , leaderboard
    , lKind
    , lIsIconURLDefault
    , lName
    , lId
    , lIconURL
    , lOrder

    -- ** MetagameConfig
    , MetagameConfig
    , metagameConfig
    , mcKind
    , mcCurrentVersion
    , mcPlayerLevels

    -- ** CategoryListResponse
    , CategoryListResponse
    , categoryListResponse
    , clrNextPageToken
    , clrKind
    , clrItems

    -- ** EventDefinition
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

    -- ** RevisionCheckResponseRevisionStatus
    , RevisionCheckResponseRevisionStatus (..)

    -- ** SnapshotType
    , SnapshotType (..)

    -- ** ScoresListWindowTimeSpan
    , ScoresListWindowTimeSpan (..)

    -- ** EventUpdateRequest
    , EventUpdateRequest
    , eventUpdateRequest
    , eUpdateCount
    , eKind
    , eDefinitionId

    -- ** PlayerAchievementAchievementState
    , PlayerAchievementAchievementState (..)

    -- ** AchievementUnlockResponse
    , AchievementUnlockResponse
    , achievementUnlockResponse
    , achKind
    , achNewlyUnlocked

    -- ** ScoresGetTimeSpan
    , ScoresGetTimeSpan (..)

    -- ** PlayerAchievement
    , PlayerAchievement
    , playerAchievement
    , paKind
    , paAchievementState
    , paFormattedCurrentStepsString
    , paExperiencePoints
    , paId
    , paCurrentSteps
    , paLastUpdatedTimestamp

    -- ** EventDefinitionVisibility
    , EventDefinitionVisibility (..)

    -- ** ImageAsset
    , ImageAsset
    , imageAsset
    , iaHeight
    , iaKind
    , iaURL
    , iaWidth
    , iaName

    -- ** AchievementUpdateMultipleRequest
    , AchievementUpdateMultipleRequest
    , achievementUpdateMultipleRequest
    , aumruKind
    , aumruUpdates

    -- ** LeaderboardOrder
    , LeaderboardOrder (..)

    -- ** AchievementUpdateRequest
    , AchievementUpdateRequest
    , achievementUpdateRequest
    , auruAchievementId
    , auruKind
    , auruUpdateType
    , auruSetStepsAtLeastPayload
    , auruIncrementPayload

    -- ** ScoresGetIncludeRankType
    , ScoresGetIncludeRankType (..)

    -- ** LeaderboardScoreRank
    , LeaderboardScoreRank
    , leaderboardScoreRank
    , lsrNumScores
    , lsrKind
    , lsrFormattedRank
    , lsrFormattedNumScores
    , lsrRank

    -- ** Xgafv
    , Xgafv (..)

    -- ** PlayerListResponse
    , PlayerListResponse
    , playerListResponse
    , plrNextPageToken
    , plrKind
    , plrItems

    -- ** LeaderboardScores
    , LeaderboardScores
    , leaderboardScores
    , lsNextPageToken
    , lsNumScores
    , lsKind
    , lsPlayerScore
    , lsItems
    , lsPrevPageToken

    -- ** AchievementDefinition
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

    -- ** AchievementDefinitionAchievementType
    , AchievementDefinitionAchievementType (..)

    -- ** EventBatchRecordFailure
    , EventBatchRecordFailure
    , eventBatchRecordFailure
    , ebrfKind
    , ebrfRange
    , ebrfFailureCause

    -- ** PlayerFriendStatus
    , PlayerFriendStatus (..)

    -- ** AchievementIncrementResponse
    , AchievementIncrementResponse
    , achievementIncrementResponse
    , airKind
    , airNewlyUnlocked
    , airCurrentSteps

    -- ** AchievementRevealResponse
    , AchievementRevealResponse
    , achievementRevealResponse
    , arrKind
    , arrCurrentState

    -- ** AchievementSetStepsAtLeastResponse
    , AchievementSetStepsAtLeastResponse
    , achievementSetStepsAtLeastResponse
    , assalrKind
    , assalrNewlyUnlocked
    , assalrCurrentSteps

    -- ** PlayerAchievementListResponse
    , PlayerAchievementListResponse
    , playerAchievementListResponse
    , palrNextPageToken
    , palrKind
    , palrItems

    -- ** EventRecordRequest
    , EventRecordRequest
    , eventRecordRequest
    , errRequestId
    , errKind
    , errCurrentTimeMillis
    , errTimePeriods

    -- ** ScoresListTimeSpan
    , ScoresListTimeSpan (..)

    -- ** EventPeriodUpdate
    , EventPeriodUpdate
    , eventPeriodUpdate
    , epuKind
    , epuTimePeriod
    , epuUpdates

    -- ** ScoreSubmission
    , ScoreSubmission
    , scoreSubmission
    , scoSignature
    , scoScoreTag
    , scoScore
    , scoKind
    , scoLeaderboardId

    -- ** EndPoint
    , EndPoint
    , endPoint
    , epURL

    -- ** InstanceWebDetails
    , InstanceWebDetails
    , instanceWebDetails
    , iwdPreferred
    , iwdKind
    , iwdLaunchURL

    -- ** PlayerExperienceInfo
    , PlayerExperienceInfo
    , playerExperienceInfo
    , peiKind
    , peiCurrentExperiencePoints
    , peiCurrentLevel
    , peiNextLevel
    , peiLastLevelUpTimestampMillis

    -- ** GamesAchievementSetStepsAtLeast
    , GamesAchievementSetStepsAtLeast
    , gamesAchievementSetStepsAtLeast
    , gassalKind
    , gassalSteps

    -- ** AchievementUpdateResponseCurrentState
    , AchievementUpdateResponseCurrentState (..)

    -- ** AchievementDefinitionInitialState
    , AchievementDefinitionInitialState (..)

    -- ** Player
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

    -- ** GamesAchievementIncrement
    , GamesAchievementIncrement
    , gamesAchievementIncrement
    , gaiRequestId
    , gaiKind
    , gaiSteps

    -- ** EventChild
    , EventChild
    , eventChild
    , ecKind
    , ecChildId

    -- ** ApplicationVerifyResponse
    , ApplicationVerifyResponse
    , applicationVerifyResponse
    , avrKind
    , avrAlternatePlayerId
    , avrPlayerId

    -- ** PlayerEventListResponse
    , PlayerEventListResponse
    , playerEventListResponse
    , pelrNextPageToken
    , pelrKind
    , pelrItems

    -- ** PlayerScoreResponseBeatenScoreTimeSpansItem
    , PlayerScoreResponseBeatenScoreTimeSpansItem (..)

    -- ** ProFileSettings
    , ProFileSettings
    , proFileSettings
    , pfsProFileVisible
    , pfsFriendsListVisibility
    , pfsKind

    -- ** EventPeriodRange
    , EventPeriodRange
    , eventPeriodRange
    , eprKind
    , eprPeriodStartMillis
    , eprPeriodEndMillis

    -- ** InstancePlatformType
    , InstancePlatformType (..)

    -- ** MetagameListCategoriesByPlayerCollection
    , MetagameListCategoriesByPlayerCollection (..)

    -- ** AchievementsListState
    , AchievementsListState (..)

    -- ** EventRecordFailure
    , EventRecordFailure
    , eventRecordFailure
    , erfKind
    , erfFailureCause
    , erfEventId

    -- ** PlayerScoreSubmissionList
    , PlayerScoreSubmissionList
    , playerScoreSubmissionList
    , psslKind
    , psslScores

    -- ** Instance
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

import Network.Google.Prelude
import Network.Google.Games.Types
import Network.Google.Resource.Games.AchievementDefinitions.List
import Network.Google.Resource.Games.Achievements.Increment
import Network.Google.Resource.Games.Achievements.List
import Network.Google.Resource.Games.Achievements.Reveal
import Network.Google.Resource.Games.Achievements.SetStepsAtLeast
import Network.Google.Resource.Games.Achievements.Unlock
import Network.Google.Resource.Games.Achievements.UpdateMultiple
import Network.Google.Resource.Games.Applications.Get
import Network.Google.Resource.Games.Applications.GetEndPoint
import Network.Google.Resource.Games.Applications.Played
import Network.Google.Resource.Games.Applications.Verify
import Network.Google.Resource.Games.Events.ListByPlayer
import Network.Google.Resource.Games.Events.ListDefinitions
import Network.Google.Resource.Games.Events.Record
import Network.Google.Resource.Games.Leaderboards.Get
import Network.Google.Resource.Games.Leaderboards.List
import Network.Google.Resource.Games.Metagame.GetMetagameConfig
import Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer
import Network.Google.Resource.Games.Players.Get
import Network.Google.Resource.Games.Players.List
import Network.Google.Resource.Games.Revisions.Check
import Network.Google.Resource.Games.Scores.Get
import Network.Google.Resource.Games.Scores.List
import Network.Google.Resource.Games.Scores.ListWindow
import Network.Google.Resource.Games.Scores.Submit
import Network.Google.Resource.Games.Scores.SubmitMultiple
import Network.Google.Resource.Games.Snapshots.Get
import Network.Google.Resource.Games.Snapshots.List
import Network.Google.Resource.Games.Stats.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Game Services service.
type GamesAPI =
     LeaderboardsListResource :<|> LeaderboardsGetResource
       :<|> MetagameListCategoriesByPlayerResource
       :<|> MetagameGetMetagameConfigResource
       :<|> StatsGetResource
       :<|> AchievementDefinitionsListResource
       :<|> AchievementsListResource
       :<|> AchievementsUnlockResource
       :<|> AchievementsRevealResource
       :<|> AchievementsSetStepsAtLeastResource
       :<|> AchievementsUpdateMultipleResource
       :<|> AchievementsIncrementResource
       :<|> SnapshotsListResource
       :<|> SnapshotsGetResource
       :<|> EventsListDefinitionsResource
       :<|> EventsListByPlayerResource
       :<|> EventsRecordResource
       :<|> PlayersListResource
       :<|> PlayersGetResource
       :<|> RevisionsCheckResource
       :<|> ScoresListResource
       :<|> ScoresGetResource
       :<|> ScoresSubmitResource
       :<|> ScoresSubmitMultipleResource
       :<|> ScoresListWindowResource
       :<|> ApplicationsVerifyResource
       :<|> ApplicationsGetEndPointResource
       :<|> ApplicationsGetResource
       :<|> ApplicationsPlayedResource
