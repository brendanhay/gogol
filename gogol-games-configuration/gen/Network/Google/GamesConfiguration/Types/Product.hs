{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesConfiguration.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesConfiguration.Types.Product where

import           Network.Google.GamesConfiguration.Types.Sum
import           Network.Google.Prelude

-- | This is a JSON template for an image configuration resource.
--
-- /See:/ 'imageConfiguration' smart constructor.
data ImageConfiguration = ImageConfiguration
    { _icResourceId :: !(Maybe Text)
    , _icKind       :: !Text
    , _icURL        :: !(Maybe Text)
    , _icImageType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icResourceId'
--
-- * 'icKind'
--
-- * 'icURL'
--
-- * 'icImageType'
imageConfiguration
    :: ImageConfiguration
imageConfiguration =
    ImageConfiguration
    { _icResourceId = Nothing
    , _icKind = "gamesConfiguration#imageConfiguration"
    , _icURL = Nothing
    , _icImageType = Nothing
    }

-- | The resource ID of resource which the image belongs to.
icResourceId :: Lens' ImageConfiguration (Maybe Text)
icResourceId
  = lens _icResourceId (\ s a -> s{_icResourceId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#imageConfiguration.
icKind :: Lens' ImageConfiguration Text
icKind = lens _icKind (\ s a -> s{_icKind = a})

-- | The url for this image.
icURL :: Lens' ImageConfiguration (Maybe Text)
icURL = lens _icURL (\ s a -> s{_icURL = a})

-- | The image type for the image.
icImageType :: Lens' ImageConfiguration (Maybe Text)
icImageType
  = lens _icImageType (\ s a -> s{_icImageType = a})

instance FromJSON ImageConfiguration where
        parseJSON
          = withObject "ImageConfiguration"
              (\ o ->
                 ImageConfiguration <$>
                   (o .:? "resourceId") <*>
                     (o .:? "kind" .!=
                        "gamesConfiguration#imageConfiguration")
                     <*> (o .:? "url")
                     <*> (o .:? "imageType"))

instance ToJSON ImageConfiguration where
        toJSON ImageConfiguration{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _icResourceId,
                  Just ("kind" .= _icKind), ("url" .=) <$> _icURL,
                  ("imageType" .=) <$> _icImageType])

-- | This is a JSON template for a ListConfigurations response.
--
-- /See:/ 'leaderboardConfigurationListResponse' smart constructor.
data LeaderboardConfigurationListResponse = LeaderboardConfigurationListResponse
    { _lclrNextPageToken :: !(Maybe Text)
    , _lclrKind          :: !Text
    , _lclrItems         :: !(Maybe [LeaderboardConfiguration])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lclrNextPageToken'
--
-- * 'lclrKind'
--
-- * 'lclrItems'
leaderboardConfigurationListResponse
    :: LeaderboardConfigurationListResponse
leaderboardConfigurationListResponse =
    LeaderboardConfigurationListResponse
    { _lclrNextPageToken = Nothing
    , _lclrKind = "gamesConfiguration#leaderboardConfigurationListResponse"
    , _lclrItems = Nothing
    }

-- | The pagination token for the next page of results.
lclrNextPageToken :: Lens' LeaderboardConfigurationListResponse (Maybe Text)
lclrNextPageToken
  = lens _lclrNextPageToken
      (\ s a -> s{_lclrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#leaderboardConfigurationListResponse.
lclrKind :: Lens' LeaderboardConfigurationListResponse Text
lclrKind = lens _lclrKind (\ s a -> s{_lclrKind = a})

-- | The leaderboard configurations.
lclrItems :: Lens' LeaderboardConfigurationListResponse [LeaderboardConfiguration]
lclrItems
  = lens _lclrItems (\ s a -> s{_lclrItems = a}) .
      _Default
      . _Coerce

instance FromJSON
         LeaderboardConfigurationListResponse where
        parseJSON
          = withObject "LeaderboardConfigurationListResponse"
              (\ o ->
                 LeaderboardConfigurationListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "gamesConfiguration#leaderboardConfigurationListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON LeaderboardConfigurationListResponse
         where
        toJSON LeaderboardConfigurationListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lclrNextPageToken,
                  Just ("kind" .= _lclrKind),
                  ("items" .=) <$> _lclrItems])

-- | This is a JSON template for a number affix resource.
--
-- /See:/ 'gamesNumberAffixConfiguration' smart constructor.
data GamesNumberAffixConfiguration = GamesNumberAffixConfiguration
    { _gnacFew   :: !(Maybe LocalizedStringBundle)
    , _gnacOther :: !(Maybe LocalizedStringBundle)
    , _gnacTwo   :: !(Maybe LocalizedStringBundle)
    , _gnacOne   :: !(Maybe LocalizedStringBundle)
    , _gnacZero  :: !(Maybe LocalizedStringBundle)
    , _gnacMany  :: !(Maybe LocalizedStringBundle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GamesNumberAffixConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnacFew'
--
-- * 'gnacOther'
--
-- * 'gnacTwo'
--
-- * 'gnacOne'
--
-- * 'gnacZero'
--
-- * 'gnacMany'
gamesNumberAffixConfiguration
    :: GamesNumberAffixConfiguration
gamesNumberAffixConfiguration =
    GamesNumberAffixConfiguration
    { _gnacFew = Nothing
    , _gnacOther = Nothing
    , _gnacTwo = Nothing
    , _gnacOne = Nothing
    , _gnacZero = Nothing
    , _gnacMany = Nothing
    }

-- | When the language requires special treatment of \"small\" numbers (as
-- with 2, 3, and 4 in Czech; or numbers ending 2, 3, or 4 but not 12, 13,
-- or 14 in Polish).
gnacFew :: Lens' GamesNumberAffixConfiguration (Maybe LocalizedStringBundle)
gnacFew = lens _gnacFew (\ s a -> s{_gnacFew = a})

-- | When the language does not require special treatment of the given
-- quantity (as with all numbers in Chinese, or 42 in English).
gnacOther :: Lens' GamesNumberAffixConfiguration (Maybe LocalizedStringBundle)
gnacOther
  = lens _gnacOther (\ s a -> s{_gnacOther = a})

-- | When the language requires special treatment of numbers like two (as
-- with 2 in Welsh, or 102 in Slovenian).
gnacTwo :: Lens' GamesNumberAffixConfiguration (Maybe LocalizedStringBundle)
gnacTwo = lens _gnacTwo (\ s a -> s{_gnacTwo = a})

-- | When the language requires special treatment of numbers like one (as
-- with the number 1 in English and most other languages; in Russian, any
-- number ending in 1 but not ending in 11 is in this class).
gnacOne :: Lens' GamesNumberAffixConfiguration (Maybe LocalizedStringBundle)
gnacOne = lens _gnacOne (\ s a -> s{_gnacOne = a})

-- | When the language requires special treatment of the number 0 (as in
-- Arabic).
gnacZero :: Lens' GamesNumberAffixConfiguration (Maybe LocalizedStringBundle)
gnacZero = lens _gnacZero (\ s a -> s{_gnacZero = a})

-- | When the language requires special treatment of \"large\" numbers (as
-- with numbers ending 11-99 in Maltese).
gnacMany :: Lens' GamesNumberAffixConfiguration (Maybe LocalizedStringBundle)
gnacMany = lens _gnacMany (\ s a -> s{_gnacMany = a})

instance FromJSON GamesNumberAffixConfiguration where
        parseJSON
          = withObject "GamesNumberAffixConfiguration"
              (\ o ->
                 GamesNumberAffixConfiguration <$>
                   (o .:? "few") <*> (o .:? "other") <*> (o .:? "two")
                     <*> (o .:? "one")
                     <*> (o .:? "zero")
                     <*> (o .:? "many"))

instance ToJSON GamesNumberAffixConfiguration where
        toJSON GamesNumberAffixConfiguration{..}
          = object
              (catMaybes
                 [("few" .=) <$> _gnacFew,
                  ("other" .=) <$> _gnacOther, ("two" .=) <$> _gnacTwo,
                  ("one" .=) <$> _gnacOne, ("zero" .=) <$> _gnacZero,
                  ("many" .=) <$> _gnacMany])

-- | This is a JSON template for a ListConfigurations response.
--
-- /See:/ 'achievementConfigurationListResponse' smart constructor.
data AchievementConfigurationListResponse = AchievementConfigurationListResponse
    { _aclrNextPageToken :: !(Maybe Text)
    , _aclrKind          :: !Text
    , _aclrItems         :: !(Maybe [AchievementConfiguration])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclrNextPageToken'
--
-- * 'aclrKind'
--
-- * 'aclrItems'
achievementConfigurationListResponse
    :: AchievementConfigurationListResponse
achievementConfigurationListResponse =
    AchievementConfigurationListResponse
    { _aclrNextPageToken = Nothing
    , _aclrKind = "gamesConfiguration#achievementConfigurationListResponse"
    , _aclrItems = Nothing
    }

-- | The pagination token for the next page of results.
aclrNextPageToken :: Lens' AchievementConfigurationListResponse (Maybe Text)
aclrNextPageToken
  = lens _aclrNextPageToken
      (\ s a -> s{_aclrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementConfigurationListResponse.
aclrKind :: Lens' AchievementConfigurationListResponse Text
aclrKind = lens _aclrKind (\ s a -> s{_aclrKind = a})

-- | The achievement configurations.
aclrItems :: Lens' AchievementConfigurationListResponse [AchievementConfiguration]
aclrItems
  = lens _aclrItems (\ s a -> s{_aclrItems = a}) .
      _Default
      . _Coerce

instance FromJSON
         AchievementConfigurationListResponse where
        parseJSON
          = withObject "AchievementConfigurationListResponse"
              (\ o ->
                 AchievementConfigurationListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "gamesConfiguration#achievementConfigurationListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AchievementConfigurationListResponse
         where
        toJSON AchievementConfigurationListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _aclrNextPageToken,
                  Just ("kind" .= _aclrKind),
                  ("items" .=) <$> _aclrItems])

-- | This is a JSON template for an leaderboard configuration resource.
--
-- /See:/ 'leaderboardConfiguration' smart constructor.
data LeaderboardConfiguration = LeaderboardConfiguration
    { _lcScoreMax   :: !(Maybe (JSONText Int64))
    , _lcKind       :: !Text
    , _lcPublished  :: !(Maybe LeaderboardConfigurationDetail)
    , _lcToken      :: !(Maybe Text)
    , _lcScoreMin   :: !(Maybe (JSONText Int64))
    , _lcDraft      :: !(Maybe LeaderboardConfigurationDetail)
    , _lcId         :: !(Maybe Text)
    , _lcScoreOrder :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcScoreMax'
--
-- * 'lcKind'
--
-- * 'lcPublished'
--
-- * 'lcToken'
--
-- * 'lcScoreMin'
--
-- * 'lcDraft'
--
-- * 'lcId'
--
-- * 'lcScoreOrder'
leaderboardConfiguration
    :: LeaderboardConfiguration
leaderboardConfiguration =
    LeaderboardConfiguration
    { _lcScoreMax = Nothing
    , _lcKind = "gamesConfiguration#leaderboardConfiguration"
    , _lcPublished = Nothing
    , _lcToken = Nothing
    , _lcScoreMin = Nothing
    , _lcDraft = Nothing
    , _lcId = Nothing
    , _lcScoreOrder = Nothing
    }

-- | Maximum score that can be posted to this leaderboard.
lcScoreMax :: Lens' LeaderboardConfiguration (Maybe Int64)
lcScoreMax
  = lens _lcScoreMax (\ s a -> s{_lcScoreMax = a}) .
      mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#leaderboardConfiguration.
lcKind :: Lens' LeaderboardConfiguration Text
lcKind = lens _lcKind (\ s a -> s{_lcKind = a})

-- | The read-only published data of the leaderboard.
lcPublished :: Lens' LeaderboardConfiguration (Maybe LeaderboardConfigurationDetail)
lcPublished
  = lens _lcPublished (\ s a -> s{_lcPublished = a})

-- | The token for this resource.
lcToken :: Lens' LeaderboardConfiguration (Maybe Text)
lcToken = lens _lcToken (\ s a -> s{_lcToken = a})

-- | Minimum score that can be posted to this leaderboard.
lcScoreMin :: Lens' LeaderboardConfiguration (Maybe Int64)
lcScoreMin
  = lens _lcScoreMin (\ s a -> s{_lcScoreMin = a}) .
      mapping _Coerce

-- | The draft data of the leaderboard.
lcDraft :: Lens' LeaderboardConfiguration (Maybe LeaderboardConfigurationDetail)
lcDraft = lens _lcDraft (\ s a -> s{_lcDraft = a})

-- | The ID of the leaderboard.
lcId :: Lens' LeaderboardConfiguration (Maybe Text)
lcId = lens _lcId (\ s a -> s{_lcId = a})

-- | The type of the leaderboard. Possible values are: - \"LARGER_IS_BETTER\"
-- - Larger scores posted are ranked higher. - \"SMALLER_IS_BETTER\" -
-- Smaller scores posted are ranked higher.
lcScoreOrder :: Lens' LeaderboardConfiguration (Maybe Text)
lcScoreOrder
  = lens _lcScoreOrder (\ s a -> s{_lcScoreOrder = a})

instance FromJSON LeaderboardConfiguration where
        parseJSON
          = withObject "LeaderboardConfiguration"
              (\ o ->
                 LeaderboardConfiguration <$>
                   (o .:? "scoreMax") <*>
                     (o .:? "kind" .!=
                        "gamesConfiguration#leaderboardConfiguration")
                     <*> (o .:? "published")
                     <*> (o .:? "token")
                     <*> (o .:? "scoreMin")
                     <*> (o .:? "draft")
                     <*> (o .:? "id")
                     <*> (o .:? "scoreOrder"))

instance ToJSON LeaderboardConfiguration where
        toJSON LeaderboardConfiguration{..}
          = object
              (catMaybes
                 [("scoreMax" .=) <$> _lcScoreMax,
                  Just ("kind" .= _lcKind),
                  ("published" .=) <$> _lcPublished,
                  ("token" .=) <$> _lcToken,
                  ("scoreMin" .=) <$> _lcScoreMin,
                  ("draft" .=) <$> _lcDraft, ("id" .=) <$> _lcId,
                  ("scoreOrder" .=) <$> _lcScoreOrder])

-- | This is a JSON template for an achievement configuration resource.
--
-- /See:/ 'achievementConfiguration' smart constructor.
data AchievementConfiguration = AchievementConfiguration
    { _acAchievementType :: !(Maybe Text)
    , _acStepsToUnlock   :: !(Maybe (JSONText Int32))
    , _acKind            :: !Text
    , _acPublished       :: !(Maybe AchievementConfigurationDetail)
    , _acToken           :: !(Maybe Text)
    , _acInitialState    :: !(Maybe Text)
    , _acDraft           :: !(Maybe AchievementConfigurationDetail)
    , _acId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAchievementType'
--
-- * 'acStepsToUnlock'
--
-- * 'acKind'
--
-- * 'acPublished'
--
-- * 'acToken'
--
-- * 'acInitialState'
--
-- * 'acDraft'
--
-- * 'acId'
achievementConfiguration
    :: AchievementConfiguration
achievementConfiguration =
    AchievementConfiguration
    { _acAchievementType = Nothing
    , _acStepsToUnlock = Nothing
    , _acKind = "gamesConfiguration#achievementConfiguration"
    , _acPublished = Nothing
    , _acToken = Nothing
    , _acInitialState = Nothing
    , _acDraft = Nothing
    , _acId = Nothing
    }

-- | The type of the achievement. Possible values are: - \"STANDARD\" -
-- Achievement is either locked or unlocked. - \"INCREMENTAL\" -
-- Achievement is incremental.
acAchievementType :: Lens' AchievementConfiguration (Maybe Text)
acAchievementType
  = lens _acAchievementType
      (\ s a -> s{_acAchievementType = a})

-- | Steps to unlock. Only applicable to incremental achievements.
acStepsToUnlock :: Lens' AchievementConfiguration (Maybe Int32)
acStepsToUnlock
  = lens _acStepsToUnlock
      (\ s a -> s{_acStepsToUnlock = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#achievementConfiguration.
acKind :: Lens' AchievementConfiguration Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The read-only published data of the achievement.
acPublished :: Lens' AchievementConfiguration (Maybe AchievementConfigurationDetail)
acPublished
  = lens _acPublished (\ s a -> s{_acPublished = a})

-- | The token for this resource.
acToken :: Lens' AchievementConfiguration (Maybe Text)
acToken = lens _acToken (\ s a -> s{_acToken = a})

-- | The initial state of the achievement. Possible values are: - \"HIDDEN\"
-- - Achievement is hidden. - \"REVEALED\" - Achievement is revealed. -
-- \"UNLOCKED\" - Achievement is unlocked.
acInitialState :: Lens' AchievementConfiguration (Maybe Text)
acInitialState
  = lens _acInitialState
      (\ s a -> s{_acInitialState = a})

-- | The draft data of the achievement.
acDraft :: Lens' AchievementConfiguration (Maybe AchievementConfigurationDetail)
acDraft = lens _acDraft (\ s a -> s{_acDraft = a})

-- | The ID of the achievement.
acId :: Lens' AchievementConfiguration (Maybe Text)
acId = lens _acId (\ s a -> s{_acId = a})

instance FromJSON AchievementConfiguration where
        parseJSON
          = withObject "AchievementConfiguration"
              (\ o ->
                 AchievementConfiguration <$>
                   (o .:? "achievementType") <*> (o .:? "stepsToUnlock")
                     <*>
                     (o .:? "kind" .!=
                        "gamesConfiguration#achievementConfiguration")
                     <*> (o .:? "published")
                     <*> (o .:? "token")
                     <*> (o .:? "initialState")
                     <*> (o .:? "draft")
                     <*> (o .:? "id"))

instance ToJSON AchievementConfiguration where
        toJSON AchievementConfiguration{..}
          = object
              (catMaybes
                 [("achievementType" .=) <$> _acAchievementType,
                  ("stepsToUnlock" .=) <$> _acStepsToUnlock,
                  Just ("kind" .= _acKind),
                  ("published" .=) <$> _acPublished,
                  ("token" .=) <$> _acToken,
                  ("initialState" .=) <$> _acInitialState,
                  ("draft" .=) <$> _acDraft, ("id" .=) <$> _acId])

-- | This is a JSON template for a localized string resource.
--
-- /See:/ 'localizedString' smart constructor.
data LocalizedString = LocalizedString
    { _lsKind   :: !Text
    , _lsLocale :: !(Maybe Text)
    , _lsValue  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsKind'
--
-- * 'lsLocale'
--
-- * 'lsValue'
localizedString
    :: LocalizedString
localizedString =
    LocalizedString
    { _lsKind = "gamesConfiguration#localizedString"
    , _lsLocale = Nothing
    , _lsValue = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#localizedString.
lsKind :: Lens' LocalizedString Text
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The locale string.
lsLocale :: Lens' LocalizedString (Maybe Text)
lsLocale = lens _lsLocale (\ s a -> s{_lsLocale = a})

-- | The string value.
lsValue :: Lens' LocalizedString (Maybe Text)
lsValue = lens _lsValue (\ s a -> s{_lsValue = a})

instance FromJSON LocalizedString where
        parseJSON
          = withObject "LocalizedString"
              (\ o ->
                 LocalizedString <$>
                   (o .:? "kind" .!=
                      "gamesConfiguration#localizedString")
                     <*> (o .:? "locale")
                     <*> (o .:? "value"))

instance ToJSON LocalizedString where
        toJSON LocalizedString{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lsKind),
                  ("locale" .=) <$> _lsLocale,
                  ("value" .=) <$> _lsValue])

-- | This is a JSON template for a number format resource.
--
-- /See:/ 'gamesNumberFormatConfiguration' smart constructor.
data GamesNumberFormatConfiguration = GamesNumberFormatConfiguration
    { _gnfcSuffix           :: !(Maybe GamesNumberAffixConfiguration)
    , _gnfcCurrencyCode     :: !(Maybe Text)
    , _gnfcNumberFormatType :: !(Maybe Text)
    , _gnfcNumDecimalPlaces :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GamesNumberFormatConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnfcSuffix'
--
-- * 'gnfcCurrencyCode'
--
-- * 'gnfcNumberFormatType'
--
-- * 'gnfcNumDecimalPlaces'
gamesNumberFormatConfiguration
    :: GamesNumberFormatConfiguration
gamesNumberFormatConfiguration =
    GamesNumberFormatConfiguration
    { _gnfcSuffix = Nothing
    , _gnfcCurrencyCode = Nothing
    , _gnfcNumberFormatType = Nothing
    , _gnfcNumDecimalPlaces = Nothing
    }

-- | An optional suffix for the NUMERIC format type. These strings follow the
-- same plural rules as all Android string resources.
gnfcSuffix :: Lens' GamesNumberFormatConfiguration (Maybe GamesNumberAffixConfiguration)
gnfcSuffix
  = lens _gnfcSuffix (\ s a -> s{_gnfcSuffix = a})

-- | The curreny code string. Only used for CURRENCY format type.
gnfcCurrencyCode :: Lens' GamesNumberFormatConfiguration (Maybe Text)
gnfcCurrencyCode
  = lens _gnfcCurrencyCode
      (\ s a -> s{_gnfcCurrencyCode = a})

-- | The formatting for the number. Possible values are: - \"NUMERIC\" -
-- Numbers are formatted to have no digits or a fixed number of digits
-- after the decimal point according to locale. An optional custom unit can
-- be added. - \"TIME_DURATION\" - Numbers are formatted to hours, minutes
-- and seconds. - \"CURRENCY\" - Numbers are formatted to currency
-- according to locale.
gnfcNumberFormatType :: Lens' GamesNumberFormatConfiguration (Maybe Text)
gnfcNumberFormatType
  = lens _gnfcNumberFormatType
      (\ s a -> s{_gnfcNumberFormatType = a})

-- | The number of decimal places for number. Only used for NUMERIC format
-- type.
gnfcNumDecimalPlaces :: Lens' GamesNumberFormatConfiguration (Maybe Int32)
gnfcNumDecimalPlaces
  = lens _gnfcNumDecimalPlaces
      (\ s a -> s{_gnfcNumDecimalPlaces = a})
      . mapping _Coerce

instance FromJSON GamesNumberFormatConfiguration
         where
        parseJSON
          = withObject "GamesNumberFormatConfiguration"
              (\ o ->
                 GamesNumberFormatConfiguration <$>
                   (o .:? "suffix") <*> (o .:? "currencyCode") <*>
                     (o .:? "numberFormatType")
                     <*> (o .:? "numDecimalPlaces"))

instance ToJSON GamesNumberFormatConfiguration where
        toJSON GamesNumberFormatConfiguration{..}
          = object
              (catMaybes
                 [("suffix" .=) <$> _gnfcSuffix,
                  ("currencyCode" .=) <$> _gnfcCurrencyCode,
                  ("numberFormatType" .=) <$> _gnfcNumberFormatType,
                  ("numDecimalPlaces" .=) <$> _gnfcNumDecimalPlaces])

-- | This is a JSON template for a leaderboard configuration detail.
--
-- /See:/ 'leaderboardConfigurationDetail' smart constructor.
data LeaderboardConfigurationDetail = LeaderboardConfigurationDetail
    { _lcdKind        :: !Text
    , _lcdScoreFormat :: !(Maybe GamesNumberFormatConfiguration)
    , _lcdSortRank    :: !(Maybe (JSONText Int32))
    , _lcdName        :: !(Maybe LocalizedStringBundle)
    , _lcdIconURL     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdKind'
--
-- * 'lcdScoreFormat'
--
-- * 'lcdSortRank'
--
-- * 'lcdName'
--
-- * 'lcdIconURL'
leaderboardConfigurationDetail
    :: LeaderboardConfigurationDetail
leaderboardConfigurationDetail =
    LeaderboardConfigurationDetail
    { _lcdKind = "gamesConfiguration#leaderboardConfigurationDetail"
    , _lcdScoreFormat = Nothing
    , _lcdSortRank = Nothing
    , _lcdName = Nothing
    , _lcdIconURL = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#leaderboardConfigurationDetail.
lcdKind :: Lens' LeaderboardConfigurationDetail Text
lcdKind = lens _lcdKind (\ s a -> s{_lcdKind = a})

-- | The score formatting for the leaderboard.
lcdScoreFormat :: Lens' LeaderboardConfigurationDetail (Maybe GamesNumberFormatConfiguration)
lcdScoreFormat
  = lens _lcdScoreFormat
      (\ s a -> s{_lcdScoreFormat = a})

-- | The sort rank of this leaderboard. Writes to this field are ignored.
lcdSortRank :: Lens' LeaderboardConfigurationDetail (Maybe Int32)
lcdSortRank
  = lens _lcdSortRank (\ s a -> s{_lcdSortRank = a}) .
      mapping _Coerce

-- | Localized strings for the leaderboard name.
lcdName :: Lens' LeaderboardConfigurationDetail (Maybe LocalizedStringBundle)
lcdName = lens _lcdName (\ s a -> s{_lcdName = a})

-- | The icon url of this leaderboard. Writes to this field are ignored.
lcdIconURL :: Lens' LeaderboardConfigurationDetail (Maybe Text)
lcdIconURL
  = lens _lcdIconURL (\ s a -> s{_lcdIconURL = a})

instance FromJSON LeaderboardConfigurationDetail
         where
        parseJSON
          = withObject "LeaderboardConfigurationDetail"
              (\ o ->
                 LeaderboardConfigurationDetail <$>
                   (o .:? "kind" .!=
                      "gamesConfiguration#leaderboardConfigurationDetail")
                     <*> (o .:? "scoreFormat")
                     <*> (o .:? "sortRank")
                     <*> (o .:? "name")
                     <*> (o .:? "iconUrl"))

instance ToJSON LeaderboardConfigurationDetail where
        toJSON LeaderboardConfigurationDetail{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lcdKind),
                  ("scoreFormat" .=) <$> _lcdScoreFormat,
                  ("sortRank" .=) <$> _lcdSortRank,
                  ("name" .=) <$> _lcdName,
                  ("iconUrl" .=) <$> _lcdIconURL])

-- | This is a JSON template for an achievement configuration detail.
--
-- /See:/ 'achievementConfigurationDetail' smart constructor.
data AchievementConfigurationDetail = AchievementConfigurationDetail
    { _acdKind        :: !Text
    , _acdSortRank    :: !(Maybe (JSONText Int32))
    , _acdName        :: !(Maybe LocalizedStringBundle)
    , _acdPointValue  :: !(Maybe (JSONText Int32))
    , _acdIconURL     :: !(Maybe Text)
    , _acdDescription :: !(Maybe LocalizedStringBundle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdKind'
--
-- * 'acdSortRank'
--
-- * 'acdName'
--
-- * 'acdPointValue'
--
-- * 'acdIconURL'
--
-- * 'acdDescription'
achievementConfigurationDetail
    :: AchievementConfigurationDetail
achievementConfigurationDetail =
    AchievementConfigurationDetail
    { _acdKind = "gamesConfiguration#achievementConfigurationDetail"
    , _acdSortRank = Nothing
    , _acdName = Nothing
    , _acdPointValue = Nothing
    , _acdIconURL = Nothing
    , _acdDescription = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#achievementConfigurationDetail.
acdKind :: Lens' AchievementConfigurationDetail Text
acdKind = lens _acdKind (\ s a -> s{_acdKind = a})

-- | The sort rank of this achievement. Writes to this field are ignored.
acdSortRank :: Lens' AchievementConfigurationDetail (Maybe Int32)
acdSortRank
  = lens _acdSortRank (\ s a -> s{_acdSortRank = a}) .
      mapping _Coerce

-- | Localized strings for the achievement name.
acdName :: Lens' AchievementConfigurationDetail (Maybe LocalizedStringBundle)
acdName = lens _acdName (\ s a -> s{_acdName = a})

-- | Point value for the achievement.
acdPointValue :: Lens' AchievementConfigurationDetail (Maybe Int32)
acdPointValue
  = lens _acdPointValue
      (\ s a -> s{_acdPointValue = a})
      . mapping _Coerce

-- | The icon url of this achievement. Writes to this field are ignored.
acdIconURL :: Lens' AchievementConfigurationDetail (Maybe Text)
acdIconURL
  = lens _acdIconURL (\ s a -> s{_acdIconURL = a})

-- | Localized strings for the achievement description.
acdDescription :: Lens' AchievementConfigurationDetail (Maybe LocalizedStringBundle)
acdDescription
  = lens _acdDescription
      (\ s a -> s{_acdDescription = a})

instance FromJSON AchievementConfigurationDetail
         where
        parseJSON
          = withObject "AchievementConfigurationDetail"
              (\ o ->
                 AchievementConfigurationDetail <$>
                   (o .:? "kind" .!=
                      "gamesConfiguration#achievementConfigurationDetail")
                     <*> (o .:? "sortRank")
                     <*> (o .:? "name")
                     <*> (o .:? "pointValue")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "description"))

instance ToJSON AchievementConfigurationDetail where
        toJSON AchievementConfigurationDetail{..}
          = object
              (catMaybes
                 [Just ("kind" .= _acdKind),
                  ("sortRank" .=) <$> _acdSortRank,
                  ("name" .=) <$> _acdName,
                  ("pointValue" .=) <$> _acdPointValue,
                  ("iconUrl" .=) <$> _acdIconURL,
                  ("description" .=) <$> _acdDescription])

-- | This is a JSON template for a localized string bundle resource.
--
-- /See:/ 'localizedStringBundle' smart constructor.
data LocalizedStringBundle = LocalizedStringBundle
    { _lsbKind         :: !Text
    , _lsbTranslations :: !(Maybe [LocalizedString])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedStringBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsbKind'
--
-- * 'lsbTranslations'
localizedStringBundle
    :: LocalizedStringBundle
localizedStringBundle =
    LocalizedStringBundle
    { _lsbKind = "gamesConfiguration#localizedStringBundle"
    , _lsbTranslations = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesConfiguration#localizedStringBundle.
lsbKind :: Lens' LocalizedStringBundle Text
lsbKind = lens _lsbKind (\ s a -> s{_lsbKind = a})

-- | The locale strings.
lsbTranslations :: Lens' LocalizedStringBundle [LocalizedString]
lsbTranslations
  = lens _lsbTranslations
      (\ s a -> s{_lsbTranslations = a})
      . _Default
      . _Coerce

instance FromJSON LocalizedStringBundle where
        parseJSON
          = withObject "LocalizedStringBundle"
              (\ o ->
                 LocalizedStringBundle <$>
                   (o .:? "kind" .!=
                      "gamesConfiguration#localizedStringBundle")
                     <*> (o .:? "translations" .!= mempty))

instance ToJSON LocalizedStringBundle where
        toJSON LocalizedStringBundle{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lsbKind),
                  ("translations" .=) <$> _lsbTranslations])
