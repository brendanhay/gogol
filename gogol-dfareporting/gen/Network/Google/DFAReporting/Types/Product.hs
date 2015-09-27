{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DFAReporting.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DFAReporting.Types.Product where

import           Network.Google.DFAReporting.Types.Sum
import           Network.Google.Prelude

-- | Contains properties of a DCM account.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _aaAccountPermissionIds   :: !(Maybe [Int64])
    , _aaMaximumImageSize       :: !(Maybe Int64)
    , _aaCurrencyId             :: !(Maybe Int64)
    , _aaReportsConfiguration   :: !(Maybe (Maybe ReportsConfiguration))
    , _aaNielsenOcrEnabled      :: !(Maybe Bool)
    , _aaKind                   :: !Text
    , _aaLocale                 :: !(Maybe Text)
    , _aaActive                 :: !(Maybe Bool)
    , _aaAvailablePermissionIds :: !(Maybe [Int64])
    , _aaTeaserSizeLimit        :: !(Maybe Int64)
    , _aaComscoreVceEnabled     :: !(Maybe Bool)
    , _aaActiveViewOptOut       :: !(Maybe Bool)
    , _aaName                   :: !(Maybe Text)
    , _aaAccountProfile         :: !(Maybe AccountAccountProfile)
    , _aaId                     :: !(Maybe Int64)
    , _aaCountryId              :: !(Maybe Int64)
    , _aaActiveAdsLimitTier     :: !(Maybe AccountActiveAdsLimitTier)
    , _aaDefaultCreativeSizeId  :: !(Maybe Int64)
    , _aaDescription            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAccountPermissionIds'
--
-- * 'aaMaximumImageSize'
--
-- * 'aaCurrencyId'
--
-- * 'aaReportsConfiguration'
--
-- * 'aaNielsenOcrEnabled'
--
-- * 'aaKind'
--
-- * 'aaLocale'
--
-- * 'aaActive'
--
-- * 'aaAvailablePermissionIds'
--
-- * 'aaTeaserSizeLimit'
--
-- * 'aaComscoreVceEnabled'
--
-- * 'aaActiveViewOptOut'
--
-- * 'aaName'
--
-- * 'aaAccountProfile'
--
-- * 'aaId'
--
-- * 'aaCountryId'
--
-- * 'aaActiveAdsLimitTier'
--
-- * 'aaDefaultCreativeSizeId'
--
-- * 'aaDescription'
account
    :: Account
account =
    Account
    { _aaAccountPermissionIds = Nothing
    , _aaMaximumImageSize = Nothing
    , _aaCurrencyId = Nothing
    , _aaReportsConfiguration = Nothing
    , _aaNielsenOcrEnabled = Nothing
    , _aaKind = "dfareporting#account"
    , _aaLocale = Nothing
    , _aaActive = Nothing
    , _aaAvailablePermissionIds = Nothing
    , _aaTeaserSizeLimit = Nothing
    , _aaComscoreVceEnabled = Nothing
    , _aaActiveViewOptOut = Nothing
    , _aaName = Nothing
    , _aaAccountProfile = Nothing
    , _aaId = Nothing
    , _aaCountryId = Nothing
    , _aaActiveAdsLimitTier = Nothing
    , _aaDefaultCreativeSizeId = Nothing
    , _aaDescription = Nothing
    }

-- | Account permissions assigned to this account.
aaAccountPermissionIds :: Lens' Account [Int64]
aaAccountPermissionIds
  = lens _aaAccountPermissionIds
      (\ s a -> s{_aaAccountPermissionIds = a})
      . _Default
      . _Coerce

-- | Maximum image size allowed for this account.
aaMaximumImageSize :: Lens' Account (Maybe Int64)
aaMaximumImageSize
  = lens _aaMaximumImageSize
      (\ s a -> s{_aaMaximumImageSize = a})

-- | ID of currency associated with this account. This is a required field.
-- Acceptable values are: - \"1\" for USD - \"2\" for GBP - \"3\" for ESP -
-- \"4\" for SEK - \"5\" for CAD - \"6\" for JPY - \"7\" for DEM - \"8\"
-- for AUD - \"9\" for FRF - \"10\" for ITL - \"11\" for DKK - \"12\" for
-- NOK - \"13\" for FIM - \"14\" for ZAR - \"15\" for IEP - \"16\" for NLG
-- - \"17\" for EUR - \"18\" for KRW - \"19\" for TWD - \"20\" for SGD -
-- \"21\" for CNY - \"22\" for HKD - \"23\" for NZD - \"24\" for MYR -
-- \"25\" for BRL - \"26\" for PTE - \"27\" for MXP - \"28\" for CLP -
-- \"29\" for TRY - \"30\" for ARS - \"31\" for PEN - \"32\" for ILS -
-- \"33\" for CHF - \"34\" for VEF - \"35\" for COP - \"36\" for GTQ
aaCurrencyId :: Lens' Account (Maybe Int64)
aaCurrencyId
  = lens _aaCurrencyId (\ s a -> s{_aaCurrencyId = a})

-- | Reporting configuration of this account.
aaReportsConfiguration :: Lens' Account (Maybe (Maybe ReportsConfiguration))
aaReportsConfiguration
  = lens _aaReportsConfiguration
      (\ s a -> s{_aaReportsConfiguration = a})

-- | Whether campaigns created in this account will be enabled for Nielsen
-- OCR reach ratings by default.
aaNielsenOcrEnabled :: Lens' Account (Maybe Bool)
aaNielsenOcrEnabled
  = lens _aaNielsenOcrEnabled
      (\ s a -> s{_aaNielsenOcrEnabled = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#account\".
aaKind :: Lens' Account Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | Locale of this account. Acceptable values are: - \"cs\" (Czech) - \"de\"
-- (German) - \"en\" (English) - \"en-GB\" (English United Kingdom) -
-- \"es\" (Spanish) - \"fr\" (French) - \"it\" (Italian) - \"ja\"
-- (Japanese) - \"ko\" (Korean) - \"pl\" (Polish) - \"pt-BR\" (Portuguese
-- Brazil) - \"ru\" (Russian) - \"sv\" (Swedish) - \"tr\" (Turkish) -
-- \"zh-CN\" (Chinese Simplified) - \"zh-TW\" (Chinese Traditional)
aaLocale :: Lens' Account (Maybe Text)
aaLocale = lens _aaLocale (\ s a -> s{_aaLocale = a})

-- | Whether this account is active.
aaActive :: Lens' Account (Maybe Bool)
aaActive = lens _aaActive (\ s a -> s{_aaActive = a})

-- | User role permissions available to the user roles of this account.
aaAvailablePermissionIds :: Lens' Account [Int64]
aaAvailablePermissionIds
  = lens _aaAvailablePermissionIds
      (\ s a -> s{_aaAvailablePermissionIds = a})
      . _Default
      . _Coerce

-- | File size limit in kilobytes of Rich Media teaser creatives. Must be
-- between 1 and 10240.
aaTeaserSizeLimit :: Lens' Account (Maybe Int64)
aaTeaserSizeLimit
  = lens _aaTeaserSizeLimit
      (\ s a -> s{_aaTeaserSizeLimit = a})

-- | Whether campaigns created in this account will be enabled for comScore
-- vCE by default.
aaComscoreVceEnabled :: Lens' Account (Maybe Bool)
aaComscoreVceEnabled
  = lens _aaComscoreVceEnabled
      (\ s a -> s{_aaComscoreVceEnabled = a})

-- | Whether to serve creatives with Active View tags. If disabled,
-- viewability data will not be available for any impressions.
aaActiveViewOptOut :: Lens' Account (Maybe Bool)
aaActiveViewOptOut
  = lens _aaActiveViewOptOut
      (\ s a -> s{_aaActiveViewOptOut = a})

-- | Name of this account. This is a required field, and must be less than
-- 128 characters long and be globally unique.
aaName :: Lens' Account (Maybe Text)
aaName = lens _aaName (\ s a -> s{_aaName = a})

-- | Profile for this account. This is a read-only field that can be left
-- blank.
aaAccountProfile :: Lens' Account (Maybe AccountAccountProfile)
aaAccountProfile
  = lens _aaAccountProfile
      (\ s a -> s{_aaAccountProfile = a})

-- | ID of this account. This is a read-only, auto-generated field.
aaId :: Lens' Account (Maybe Int64)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | ID of the country associated with this account.
aaCountryId :: Lens' Account (Maybe Int64)
aaCountryId
  = lens _aaCountryId (\ s a -> s{_aaCountryId = a})

-- | Maximum number of active ads allowed for this account.
aaActiveAdsLimitTier :: Lens' Account (Maybe AccountActiveAdsLimitTier)
aaActiveAdsLimitTier
  = lens _aaActiveAdsLimitTier
      (\ s a -> s{_aaActiveAdsLimitTier = a})

-- | Default placement dimensions for this account.
aaDefaultCreativeSizeId :: Lens' Account (Maybe Int64)
aaDefaultCreativeSizeId
  = lens _aaDefaultCreativeSizeId
      (\ s a -> s{_aaDefaultCreativeSizeId = a})

-- | Description of this account.
aaDescription :: Lens' Account (Maybe Text)
aaDescription
  = lens _aaDescription
      (\ s a -> s{_aaDescription = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account <$>
                   (o .:? "accountPermissionIds" .!= mempty) <*>
                     (o .:? "maximumImageSize")
                     <*> (o .:? "currencyId")
                     <*> (o .:? "reportsConfiguration")
                     <*> (o .:? "nielsenOcrEnabled")
                     <*> (o .:? "kind" .!= "dfareporting#account")
                     <*> (o .:? "locale")
                     <*> (o .:? "active")
                     <*> (o .:? "availablePermissionIds" .!= mempty)
                     <*> (o .:? "teaserSizeLimit")
                     <*> (o .:? "comscoreVceEnabled")
                     <*> (o .:? "activeViewOptOut")
                     <*> (o .:? "name")
                     <*> (o .:? "accountProfile")
                     <*> (o .:? "id")
                     <*> (o .:? "countryId")
                     <*> (o .:? "activeAdsLimitTier")
                     <*> (o .:? "defaultCreativeSizeId")
                     <*> (o .:? "description"))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [("accountPermissionIds" .=) <$>
                    _aaAccountPermissionIds,
                  ("maximumImageSize" .=) <$> _aaMaximumImageSize,
                  ("currencyId" .=) <$> _aaCurrencyId,
                  ("reportsConfiguration" .=) <$>
                    _aaReportsConfiguration,
                  ("nielsenOcrEnabled" .=) <$> _aaNielsenOcrEnabled,
                  Just ("kind" .= _aaKind),
                  ("locale" .=) <$> _aaLocale,
                  ("active" .=) <$> _aaActive,
                  ("availablePermissionIds" .=) <$>
                    _aaAvailablePermissionIds,
                  ("teaserSizeLimit" .=) <$> _aaTeaserSizeLimit,
                  ("comscoreVceEnabled" .=) <$> _aaComscoreVceEnabled,
                  ("activeViewOptOut" .=) <$> _aaActiveViewOptOut,
                  ("name" .=) <$> _aaName,
                  ("accountProfile" .=) <$> _aaAccountProfile,
                  ("id" .=) <$> _aaId,
                  ("countryId" .=) <$> _aaCountryId,
                  ("activeAdsLimitTier" .=) <$> _aaActiveAdsLimitTier,
                  ("defaultCreativeSizeId" .=) <$>
                    _aaDefaultCreativeSizeId,
                  ("description" .=) <$> _aaDescription])

-- | Gets a summary of active ads in an account.
--
-- /See:/ 'accountActiveAdSummary' smart constructor.
data AccountActiveAdSummary = AccountActiveAdSummary
    { _aaasAvailableAds       :: !(Maybe Int64)
    , _aaasKind               :: !Text
    , _aaasAccountId          :: !(Maybe Int64)
    , _aaasActiveAds          :: !(Maybe Int64)
    , _aaasActiveAdsLimitTier :: !(Maybe AccountActiveAdSummaryActiveAdsLimitTier)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountActiveAdSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaasAvailableAds'
--
-- * 'aaasKind'
--
-- * 'aaasAccountId'
--
-- * 'aaasActiveAds'
--
-- * 'aaasActiveAdsLimitTier'
accountActiveAdSummary
    :: AccountActiveAdSummary
accountActiveAdSummary =
    AccountActiveAdSummary
    { _aaasAvailableAds = Nothing
    , _aaasKind = "dfareporting#accountActiveAdSummary"
    , _aaasAccountId = Nothing
    , _aaasActiveAds = Nothing
    , _aaasActiveAdsLimitTier = Nothing
    }

-- | Ads that can be activated for the account.
aaasAvailableAds :: Lens' AccountActiveAdSummary (Maybe Int64)
aaasAvailableAds
  = lens _aaasAvailableAds
      (\ s a -> s{_aaasAvailableAds = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountActiveAdSummary\".
aaasKind :: Lens' AccountActiveAdSummary Text
aaasKind = lens _aaasKind (\ s a -> s{_aaasKind = a})

-- | ID of the account.
aaasAccountId :: Lens' AccountActiveAdSummary (Maybe Int64)
aaasAccountId
  = lens _aaasAccountId
      (\ s a -> s{_aaasAccountId = a})

-- | Ads that have been activated for the account
aaasActiveAds :: Lens' AccountActiveAdSummary (Maybe Int64)
aaasActiveAds
  = lens _aaasActiveAds
      (\ s a -> s{_aaasActiveAds = a})

-- | Maximum number of active ads allowed for the account.
aaasActiveAdsLimitTier :: Lens' AccountActiveAdSummary (Maybe AccountActiveAdSummaryActiveAdsLimitTier)
aaasActiveAdsLimitTier
  = lens _aaasActiveAdsLimitTier
      (\ s a -> s{_aaasActiveAdsLimitTier = a})

instance FromJSON AccountActiveAdSummary where
        parseJSON
          = withObject "AccountActiveAdSummary"
              (\ o ->
                 AccountActiveAdSummary <$>
                   (o .:? "availableAds") <*>
                     (o .:? "kind" .!=
                        "dfareporting#accountActiveAdSummary")
                     <*> (o .:? "accountId")
                     <*> (o .:? "activeAds")
                     <*> (o .:? "activeAdsLimitTier"))

instance ToJSON AccountActiveAdSummary where
        toJSON AccountActiveAdSummary{..}
          = object
              (catMaybes
                 [("availableAds" .=) <$> _aaasAvailableAds,
                  Just ("kind" .= _aaasKind),
                  ("accountId" .=) <$> _aaasAccountId,
                  ("activeAds" .=) <$> _aaasActiveAds,
                  ("activeAdsLimitTier" .=) <$>
                    _aaasActiveAdsLimitTier])

-- | AccountPermissions contains information about a particular account
-- permission. Some features of DCM require an account permission to be
-- present in the account.
--
-- /See:/ 'accountPermission' smart constructor.
data AccountPermission = AccountPermission
    { _apKind              :: !Text
    , _apAccountProfiles   :: !(Maybe [AccountPermissionItemAccountProfiles])
    , _apName              :: !(Maybe Text)
    , _apId                :: !(Maybe Int64)
    , _apLevel             :: !(Maybe AccountPermissionLevel)
    , _apPermissionGroupId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apKind'
--
-- * 'apAccountProfiles'
--
-- * 'apName'
--
-- * 'apId'
--
-- * 'apLevel'
--
-- * 'apPermissionGroupId'
accountPermission
    :: AccountPermission
accountPermission =
    AccountPermission
    { _apKind = "dfareporting#accountPermission"
    , _apAccountProfiles = Nothing
    , _apName = Nothing
    , _apId = Nothing
    , _apLevel = Nothing
    , _apPermissionGroupId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountPermission\".
apKind :: Lens' AccountPermission Text
apKind = lens _apKind (\ s a -> s{_apKind = a})

-- | Account profiles associated with this account permission. Possible
-- values are: - \"ACCOUNT_PROFILE_BASIC\" - \"ACCOUNT_PROFILE_STANDARD\"
apAccountProfiles :: Lens' AccountPermission [AccountPermissionItemAccountProfiles]
apAccountProfiles
  = lens _apAccountProfiles
      (\ s a -> s{_apAccountProfiles = a})
      . _Default
      . _Coerce

-- | Name of this account permission.
apName :: Lens' AccountPermission (Maybe Text)
apName = lens _apName (\ s a -> s{_apName = a})

-- | ID of this account permission.
apId :: Lens' AccountPermission (Maybe Int64)
apId = lens _apId (\ s a -> s{_apId = a})

-- | Administrative level required to enable this account permission.
apLevel :: Lens' AccountPermission (Maybe AccountPermissionLevel)
apLevel = lens _apLevel (\ s a -> s{_apLevel = a})

-- | Permission group of this account permission.
apPermissionGroupId :: Lens' AccountPermission (Maybe Int64)
apPermissionGroupId
  = lens _apPermissionGroupId
      (\ s a -> s{_apPermissionGroupId = a})

instance FromJSON AccountPermission where
        parseJSON
          = withObject "AccountPermission"
              (\ o ->
                 AccountPermission <$>
                   (o .:? "kind" .!= "dfareporting#accountPermission")
                     <*> (o .:? "accountProfiles" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "level")
                     <*> (o .:? "permissionGroupId"))

instance ToJSON AccountPermission where
        toJSON AccountPermission{..}
          = object
              (catMaybes
                 [Just ("kind" .= _apKind),
                  ("accountProfiles" .=) <$> _apAccountProfiles,
                  ("name" .=) <$> _apName, ("id" .=) <$> _apId,
                  ("level" .=) <$> _apLevel,
                  ("permissionGroupId" .=) <$> _apPermissionGroupId])

-- | AccountPermissionGroups contains a mapping of permission group IDs to
-- names. A permission group is a grouping of account permissions.
--
-- /See:/ 'accountPermissionGroup' smart constructor.
data AccountPermissionGroup = AccountPermissionGroup
    { _apgKind :: !Text
    , _apgName :: !(Maybe Text)
    , _apgId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgKind'
--
-- * 'apgName'
--
-- * 'apgId'
accountPermissionGroup
    :: AccountPermissionGroup
accountPermissionGroup =
    AccountPermissionGroup
    { _apgKind = "dfareporting#accountPermissionGroup"
    , _apgName = Nothing
    , _apgId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountPermissionGroup\".
apgKind :: Lens' AccountPermissionGroup Text
apgKind = lens _apgKind (\ s a -> s{_apgKind = a})

-- | Name of this account permission group.
apgName :: Lens' AccountPermissionGroup (Maybe Text)
apgName = lens _apgName (\ s a -> s{_apgName = a})

-- | ID of this account permission group.
apgId :: Lens' AccountPermissionGroup (Maybe Int64)
apgId = lens _apgId (\ s a -> s{_apgId = a})

instance FromJSON AccountPermissionGroup where
        parseJSON
          = withObject "AccountPermissionGroup"
              (\ o ->
                 AccountPermissionGroup <$>
                   (o .:? "kind" .!=
                      "dfareporting#accountPermissionGroup")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON AccountPermissionGroup where
        toJSON AccountPermissionGroup{..}
          = object
              (catMaybes
                 [Just ("kind" .= _apgKind), ("name" .=) <$> _apgName,
                  ("id" .=) <$> _apgId])

-- | Account Permission Group List Response
--
-- /See:/ 'accountPermissionGroupsListResponse' smart constructor.
data AccountPermissionGroupsListResponse = AccountPermissionGroupsListResponse
    { _apglrKind                    :: !Text
    , _apglrAccountPermissionGroups :: !(Maybe [Maybe AccountPermissionGroup])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroupsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apglrKind'
--
-- * 'apglrAccountPermissionGroups'
accountPermissionGroupsListResponse
    :: AccountPermissionGroupsListResponse
accountPermissionGroupsListResponse =
    AccountPermissionGroupsListResponse
    { _apglrKind = "dfareporting#accountPermissionGroupsListResponse"
    , _apglrAccountPermissionGroups = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountPermissionGroupsListResponse\".
apglrKind :: Lens' AccountPermissionGroupsListResponse Text
apglrKind
  = lens _apglrKind (\ s a -> s{_apglrKind = a})

-- | Account permission group collection.
apglrAccountPermissionGroups :: Lens' AccountPermissionGroupsListResponse [Maybe AccountPermissionGroup]
apglrAccountPermissionGroups
  = lens _apglrAccountPermissionGroups
      (\ s a -> s{_apglrAccountPermissionGroups = a})
      . _Default
      . _Coerce

instance FromJSON AccountPermissionGroupsListResponse
         where
        parseJSON
          = withObject "AccountPermissionGroupsListResponse"
              (\ o ->
                 AccountPermissionGroupsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#accountPermissionGroupsListResponse")
                     <*> (o .:? "accountPermissionGroups" .!= mempty))

instance ToJSON AccountPermissionGroupsListResponse
         where
        toJSON AccountPermissionGroupsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _apglrKind),
                  ("accountPermissionGroups" .=) <$>
                    _apglrAccountPermissionGroups])

-- | Account Permission List Response
--
-- /See:/ 'accountPermissionsListResponse' smart constructor.
data AccountPermissionsListResponse = AccountPermissionsListResponse
    { _aplrKind               :: !Text
    , _aplrAccountPermissions :: !(Maybe [Maybe AccountPermission])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplrKind'
--
-- * 'aplrAccountPermissions'
accountPermissionsListResponse
    :: AccountPermissionsListResponse
accountPermissionsListResponse =
    AccountPermissionsListResponse
    { _aplrKind = "dfareporting#accountPermissionsListResponse"
    , _aplrAccountPermissions = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountPermissionsListResponse\".
aplrKind :: Lens' AccountPermissionsListResponse Text
aplrKind = lens _aplrKind (\ s a -> s{_aplrKind = a})

-- | Account permission collection.
aplrAccountPermissions :: Lens' AccountPermissionsListResponse [Maybe AccountPermission]
aplrAccountPermissions
  = lens _aplrAccountPermissions
      (\ s a -> s{_aplrAccountPermissions = a})
      . _Default
      . _Coerce

instance FromJSON AccountPermissionsListResponse
         where
        parseJSON
          = withObject "AccountPermissionsListResponse"
              (\ o ->
                 AccountPermissionsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#accountPermissionsListResponse")
                     <*> (o .:? "accountPermissions" .!= mempty))

instance ToJSON AccountPermissionsListResponse where
        toJSON AccountPermissionsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aplrKind),
                  ("accountPermissions" .=) <$>
                    _aplrAccountPermissions])

-- | AccountUserProfiles contains properties of a DCM user profile. This
-- resource is specifically for managing user profiles, whereas
-- UserProfiles is for accessing the API.
--
-- /See:/ 'accountUserProfile' smart constructor.
data AccountUserProfile = AccountUserProfile
    { _aupEmail            :: !(Maybe Text)
    , _aupUserRoleFilter   :: !(Maybe (Maybe ObjectFilter))
    , _aupAdvertiserFilter :: !(Maybe (Maybe ObjectFilter))
    , _aupUserRoleId       :: !(Maybe Int64)
    , _aupKind             :: !Text
    , _aupLocale           :: !(Maybe Text)
    , _aupSiteFilter       :: !(Maybe (Maybe ObjectFilter))
    , _aupTraffickerType   :: !(Maybe AccountUserProfileTraffickerType)
    , _aupActive           :: !(Maybe Bool)
    , _aupAccountId        :: !(Maybe Int64)
    , _aupName             :: !(Maybe Text)
    , _aupId               :: !(Maybe Int64)
    , _aupUserAccessType   :: !(Maybe AccountUserProfileUserAccessType)
    , _aupComments         :: !(Maybe Text)
    , _aupSubaccountId     :: !(Maybe Int64)
    , _aupCampaignFilter   :: !(Maybe (Maybe ObjectFilter))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupEmail'
--
-- * 'aupUserRoleFilter'
--
-- * 'aupAdvertiserFilter'
--
-- * 'aupUserRoleId'
--
-- * 'aupKind'
--
-- * 'aupLocale'
--
-- * 'aupSiteFilter'
--
-- * 'aupTraffickerType'
--
-- * 'aupActive'
--
-- * 'aupAccountId'
--
-- * 'aupName'
--
-- * 'aupId'
--
-- * 'aupUserAccessType'
--
-- * 'aupComments'
--
-- * 'aupSubaccountId'
--
-- * 'aupCampaignFilter'
accountUserProfile
    :: AccountUserProfile
accountUserProfile =
    AccountUserProfile
    { _aupEmail = Nothing
    , _aupUserRoleFilter = Nothing
    , _aupAdvertiserFilter = Nothing
    , _aupUserRoleId = Nothing
    , _aupKind = "dfareporting#accountUserProfile"
    , _aupLocale = Nothing
    , _aupSiteFilter = Nothing
    , _aupTraffickerType = Nothing
    , _aupActive = Nothing
    , _aupAccountId = Nothing
    , _aupName = Nothing
    , _aupId = Nothing
    , _aupUserAccessType = Nothing
    , _aupComments = Nothing
    , _aupSubaccountId = Nothing
    , _aupCampaignFilter = Nothing
    }

-- | Email of the user profile. The email addresss must be linked to a Google
-- Account. This field is required on insertion and is read-only after
-- insertion.
aupEmail :: Lens' AccountUserProfile (Maybe Text)
aupEmail = lens _aupEmail (\ s a -> s{_aupEmail = a})

-- | Filter that describes which user roles are visible to the user profile.
aupUserRoleFilter :: Lens' AccountUserProfile (Maybe (Maybe ObjectFilter))
aupUserRoleFilter
  = lens _aupUserRoleFilter
      (\ s a -> s{_aupUserRoleFilter = a})

-- | Filter that describes which advertisers are visible to the user profile.
aupAdvertiserFilter :: Lens' AccountUserProfile (Maybe (Maybe ObjectFilter))
aupAdvertiserFilter
  = lens _aupAdvertiserFilter
      (\ s a -> s{_aupAdvertiserFilter = a})

-- | User role ID of the user profile. This is a required field.
aupUserRoleId :: Lens' AccountUserProfile (Maybe Int64)
aupUserRoleId
  = lens _aupUserRoleId
      (\ s a -> s{_aupUserRoleId = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountUserProfile\".
aupKind :: Lens' AccountUserProfile Text
aupKind = lens _aupKind (\ s a -> s{_aupKind = a})

-- | Locale of the user profile. This is a required field. Acceptable values
-- are: - \"cs\" (Czech) - \"de\" (German) - \"en\" (English) - \"en-GB\"
-- (English United Kingdom) - \"es\" (Spanish) - \"fr\" (French) - \"it\"
-- (Italian) - \"ja\" (Japanese) - \"ko\" (Korean) - \"pl\" (Polish) -
-- \"pt-BR\" (Portuguese Brazil) - \"ru\" (Russian) - \"sv\" (Swedish) -
-- \"tr\" (Turkish) - \"zh-CN\" (Chinese Simplified) - \"zh-TW\" (Chinese
-- Traditional)
aupLocale :: Lens' AccountUserProfile (Maybe Text)
aupLocale
  = lens _aupLocale (\ s a -> s{_aupLocale = a})

-- | Filter that describes which sites are visible to the user profile.
aupSiteFilter :: Lens' AccountUserProfile (Maybe (Maybe ObjectFilter))
aupSiteFilter
  = lens _aupSiteFilter
      (\ s a -> s{_aupSiteFilter = a})

-- | Trafficker type of this user profile.
aupTraffickerType :: Lens' AccountUserProfile (Maybe AccountUserProfileTraffickerType)
aupTraffickerType
  = lens _aupTraffickerType
      (\ s a -> s{_aupTraffickerType = a})

-- | Whether this user profile is active. This defaults to false, and must be
-- set true on insert for the user profile to be usable.
aupActive :: Lens' AccountUserProfile (Maybe Bool)
aupActive
  = lens _aupActive (\ s a -> s{_aupActive = a})

-- | Account ID of the user profile. This is a read-only field that can be
-- left blank.
aupAccountId :: Lens' AccountUserProfile (Maybe Int64)
aupAccountId
  = lens _aupAccountId (\ s a -> s{_aupAccountId = a})

-- | Name of the user profile. This is a required field. Must be less than 64
-- characters long, must be globally unique, and cannot contain whitespace
-- or any of the following characters: \"&;\"#%,\".
aupName :: Lens' AccountUserProfile (Maybe Text)
aupName = lens _aupName (\ s a -> s{_aupName = a})

-- | ID of the user profile. This is a read-only, auto-generated field.
aupId :: Lens' AccountUserProfile (Maybe Int64)
aupId = lens _aupId (\ s a -> s{_aupId = a})

-- | User type of the user profile. This is a read-only field that can be
-- left blank.
aupUserAccessType :: Lens' AccountUserProfile (Maybe AccountUserProfileUserAccessType)
aupUserAccessType
  = lens _aupUserAccessType
      (\ s a -> s{_aupUserAccessType = a})

-- | Comments for this user profile.
aupComments :: Lens' AccountUserProfile (Maybe Text)
aupComments
  = lens _aupComments (\ s a -> s{_aupComments = a})

-- | Subaccount ID of the user profile. This is a read-only field that can be
-- left blank.
aupSubaccountId :: Lens' AccountUserProfile (Maybe Int64)
aupSubaccountId
  = lens _aupSubaccountId
      (\ s a -> s{_aupSubaccountId = a})

-- | Filter that describes which campaigns are visible to the user profile.
aupCampaignFilter :: Lens' AccountUserProfile (Maybe (Maybe ObjectFilter))
aupCampaignFilter
  = lens _aupCampaignFilter
      (\ s a -> s{_aupCampaignFilter = a})

instance FromJSON AccountUserProfile where
        parseJSON
          = withObject "AccountUserProfile"
              (\ o ->
                 AccountUserProfile <$>
                   (o .:? "email") <*> (o .:? "userRoleFilter") <*>
                     (o .:? "advertiserFilter")
                     <*> (o .:? "userRoleId")
                     <*>
                     (o .:? "kind" .!= "dfareporting#accountUserProfile")
                     <*> (o .:? "locale")
                     <*> (o .:? "siteFilter")
                     <*> (o .:? "traffickerType")
                     <*> (o .:? "active")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "userAccessType")
                     <*> (o .:? "comments")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "campaignFilter"))

instance ToJSON AccountUserProfile where
        toJSON AccountUserProfile{..}
          = object
              (catMaybes
                 [("email" .=) <$> _aupEmail,
                  ("userRoleFilter" .=) <$> _aupUserRoleFilter,
                  ("advertiserFilter" .=) <$> _aupAdvertiserFilter,
                  ("userRoleId" .=) <$> _aupUserRoleId,
                  Just ("kind" .= _aupKind),
                  ("locale" .=) <$> _aupLocale,
                  ("siteFilter" .=) <$> _aupSiteFilter,
                  ("traffickerType" .=) <$> _aupTraffickerType,
                  ("active" .=) <$> _aupActive,
                  ("accountId" .=) <$> _aupAccountId,
                  ("name" .=) <$> _aupName, ("id" .=) <$> _aupId,
                  ("userAccessType" .=) <$> _aupUserAccessType,
                  ("comments" .=) <$> _aupComments,
                  ("subaccountId" .=) <$> _aupSubaccountId,
                  ("campaignFilter" .=) <$> _aupCampaignFilter])

-- | Account User Profile List Response
--
-- /See:/ 'accountUserProfilesListResponse' smart constructor.
data AccountUserProfilesListResponse = AccountUserProfilesListResponse
    { _auplrNextPageToken       :: !(Maybe Text)
    , _auplrAccountUserProfiles :: !(Maybe [Maybe AccountUserProfile])
    , _auplrKind                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auplrNextPageToken'
--
-- * 'auplrAccountUserProfiles'
--
-- * 'auplrKind'
accountUserProfilesListResponse
    :: AccountUserProfilesListResponse
accountUserProfilesListResponse =
    AccountUserProfilesListResponse
    { _auplrNextPageToken = Nothing
    , _auplrAccountUserProfiles = Nothing
    , _auplrKind = "dfareporting#accountUserProfilesListResponse"
    }

-- | Pagination token to be used for the next list operation.
auplrNextPageToken :: Lens' AccountUserProfilesListResponse (Maybe Text)
auplrNextPageToken
  = lens _auplrNextPageToken
      (\ s a -> s{_auplrNextPageToken = a})

-- | Account user profile collection.
auplrAccountUserProfiles :: Lens' AccountUserProfilesListResponse [Maybe AccountUserProfile]
auplrAccountUserProfiles
  = lens _auplrAccountUserProfiles
      (\ s a -> s{_auplrAccountUserProfiles = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountUserProfilesListResponse\".
auplrKind :: Lens' AccountUserProfilesListResponse Text
auplrKind
  = lens _auplrKind (\ s a -> s{_auplrKind = a})

instance FromJSON AccountUserProfilesListResponse
         where
        parseJSON
          = withObject "AccountUserProfilesListResponse"
              (\ o ->
                 AccountUserProfilesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accountUserProfiles" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#accountUserProfilesListResponse"))

instance ToJSON AccountUserProfilesListResponse where
        toJSON AccountUserProfilesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _auplrNextPageToken,
                  ("accountUserProfiles" .=) <$>
                    _auplrAccountUserProfiles,
                  Just ("kind" .= _auplrKind)])

-- | Account List Response
--
-- /See:/ 'accountsListResponse' smart constructor.
data AccountsListResponse = AccountsListResponse
    { _accNextPageToken :: !(Maybe Text)
    , _accAccounts      :: !(Maybe [Maybe Account])
    , _accKind          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accNextPageToken'
--
-- * 'accAccounts'
--
-- * 'accKind'
accountsListResponse
    :: AccountsListResponse
accountsListResponse =
    AccountsListResponse
    { _accNextPageToken = Nothing
    , _accAccounts = Nothing
    , _accKind = "dfareporting#accountsListResponse"
    }

-- | Pagination token to be used for the next list operation.
accNextPageToken :: Lens' AccountsListResponse (Maybe Text)
accNextPageToken
  = lens _accNextPageToken
      (\ s a -> s{_accNextPageToken = a})

-- | Account collection.
accAccounts :: Lens' AccountsListResponse [Maybe Account]
accAccounts
  = lens _accAccounts (\ s a -> s{_accAccounts = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#accountsListResponse\".
accKind :: Lens' AccountsListResponse Text
accKind = lens _accKind (\ s a -> s{_accKind = a})

instance FromJSON AccountsListResponse where
        parseJSON
          = withObject "AccountsListResponse"
              (\ o ->
                 AccountsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accounts" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#accountsListResponse"))

instance ToJSON AccountsListResponse where
        toJSON AccountsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _accNextPageToken,
                  ("accounts" .=) <$> _accAccounts,
                  Just ("kind" .= _accKind)])

-- | Represents an activity group.
--
-- /See:/ 'activities' smart constructor.
data Activities = Activities
    { _actKind        :: !Text
    , _actMetricNames :: !(Maybe [Text])
    , _actFilters     :: !(Maybe [Maybe DimensionValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actKind'
--
-- * 'actMetricNames'
--
-- * 'actFilters'
activities
    :: Activities
activities =
    Activities
    { _actKind = "dfareporting#activities"
    , _actMetricNames = Nothing
    , _actFilters = Nothing
    }

-- | The kind of resource this is, in this case dfareporting#activities.
actKind :: Lens' Activities Text
actKind = lens _actKind (\ s a -> s{_actKind = a})

-- | List of names of floodlight activity metrics.
actMetricNames :: Lens' Activities [Text]
actMetricNames
  = lens _actMetricNames
      (\ s a -> s{_actMetricNames = a})
      . _Default
      . _Coerce

-- | List of activity filters. The dimension values need to be all either of
-- type \"dfa:activity\" or \"dfa:activityGroup\".
actFilters :: Lens' Activities [Maybe DimensionValue]
actFilters
  = lens _actFilters (\ s a -> s{_actFilters = a}) .
      _Default
      . _Coerce

instance FromJSON Activities where
        parseJSON
          = withObject "Activities"
              (\ o ->
                 Activities <$>
                   (o .:? "kind" .!= "dfareporting#activities") <*>
                     (o .:? "metricNames" .!= mempty)
                     <*> (o .:? "filters" .!= mempty))

instance ToJSON Activities where
        toJSON Activities{..}
          = object
              (catMaybes
                 [Just ("kind" .= _actKind),
                  ("metricNames" .=) <$> _actMetricNames,
                  ("filters" .=) <$> _actFilters])

-- | Contains properties of a DCM ad.
--
-- /See:/ 'ad' smart constructor.
data Ad = Ad
    { _addCreativeGroupAssignments              :: !(Maybe [Maybe CreativeGroupAssignment])
    , _addGeoTargeting                          :: !(Maybe (Maybe GeoTargeting))
    , _addCreativeRotation                      :: !(Maybe (Maybe CreativeRotation))
    , _addTechnologyTargeting                   :: !(Maybe (Maybe TechnologyTargeting))
    , _addAudienceSegmentId                     :: !(Maybe Int64)
    , _addDayPartTargeting                      :: !(Maybe (Maybe DayPartTargeting))
    , _addSize                                  :: !(Maybe (Maybe Size))
    , _addStartTime                             :: !(Maybe UTCTime)
    , _addKind                                  :: !Text
    , _addClickThroughUrlSuffixProperties       :: !(Maybe (Maybe ClickThroughUrlSuffixProperties))
    , _addCampaignIdDimensionValue              :: !(Maybe (Maybe DimensionValue))
    , _addAdvertiserId                          :: !(Maybe Int64)
    , _addAdvertiserIdDimensionValue            :: !(Maybe (Maybe DimensionValue))
    , _addSslCompliant                          :: !(Maybe Bool)
    , _addCampaignId                            :: !(Maybe Int64)
    , _addIdDimensionValue                      :: !(Maybe (Maybe DimensionValue))
    , _addClickThroughUrl                       :: !(Maybe (Maybe ClickThroughUrl))
    , _addDeliverySchedule                      :: !(Maybe (Maybe DeliverySchedule))
    , _addEventTagOverrides                     :: !(Maybe [Maybe EventTagOverride])
    , _addActive                                :: !(Maybe Bool)
    , _addAccountId                             :: !(Maybe Int64)
    , _addName                                  :: !(Maybe Text)
    , _addKeyValueTargetingExpression           :: !(Maybe (Maybe KeyValueTargetingExpression))
    , _addEndTime                               :: !(Maybe UTCTime)
    , _addCreateInfo                            :: !(Maybe (Maybe LastModifiedInfo))
    , _addLastModifiedInfo                      :: !(Maybe (Maybe LastModifiedInfo))
    , _addId                                    :: !(Maybe Int64)
    , _addSslRequired                           :: !(Maybe Bool)
    , _addComments                              :: !(Maybe Text)
    , _addSubaccountId                          :: !(Maybe Int64)
    , _addType                                  :: !(Maybe AdType)
    , _addRemarketingListExpression             :: !(Maybe (Maybe ListTargetingExpression))
    , _addDynamicClickTracker                   :: !(Maybe Bool)
    , _addCompatibility                         :: !(Maybe AdCompatibility)
    , _addArchived                              :: !(Maybe Bool)
    , _addDefaultClickThroughEventTagProperties :: !(Maybe (Maybe DefaultClickThroughEventTagProperties))
    , _addPlacementAssignments                  :: !(Maybe [Maybe PlacementAssignment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Ad' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addCreativeGroupAssignments'
--
-- * 'addGeoTargeting'
--
-- * 'addCreativeRotation'
--
-- * 'addTechnologyTargeting'
--
-- * 'addAudienceSegmentId'
--
-- * 'addDayPartTargeting'
--
-- * 'addSize'
--
-- * 'addStartTime'
--
-- * 'addKind'
--
-- * 'addClickThroughUrlSuffixProperties'
--
-- * 'addCampaignIdDimensionValue'
--
-- * 'addAdvertiserId'
--
-- * 'addAdvertiserIdDimensionValue'
--
-- * 'addSslCompliant'
--
-- * 'addCampaignId'
--
-- * 'addIdDimensionValue'
--
-- * 'addClickThroughUrl'
--
-- * 'addDeliverySchedule'
--
-- * 'addEventTagOverrides'
--
-- * 'addActive'
--
-- * 'addAccountId'
--
-- * 'addName'
--
-- * 'addKeyValueTargetingExpression'
--
-- * 'addEndTime'
--
-- * 'addCreateInfo'
--
-- * 'addLastModifiedInfo'
--
-- * 'addId'
--
-- * 'addSslRequired'
--
-- * 'addComments'
--
-- * 'addSubaccountId'
--
-- * 'addType'
--
-- * 'addRemarketingListExpression'
--
-- * 'addDynamicClickTracker'
--
-- * 'addCompatibility'
--
-- * 'addArchived'
--
-- * 'addDefaultClickThroughEventTagProperties'
--
-- * 'addPlacementAssignments'
ad
    :: Ad
ad =
    Ad
    { _addCreativeGroupAssignments = Nothing
    , _addGeoTargeting = Nothing
    , _addCreativeRotation = Nothing
    , _addTechnologyTargeting = Nothing
    , _addAudienceSegmentId = Nothing
    , _addDayPartTargeting = Nothing
    , _addSize = Nothing
    , _addStartTime = Nothing
    , _addKind = "dfareporting#ad"
    , _addClickThroughUrlSuffixProperties = Nothing
    , _addCampaignIdDimensionValue = Nothing
    , _addAdvertiserId = Nothing
    , _addAdvertiserIdDimensionValue = Nothing
    , _addSslCompliant = Nothing
    , _addCampaignId = Nothing
    , _addIdDimensionValue = Nothing
    , _addClickThroughUrl = Nothing
    , _addDeliverySchedule = Nothing
    , _addEventTagOverrides = Nothing
    , _addActive = Nothing
    , _addAccountId = Nothing
    , _addName = Nothing
    , _addKeyValueTargetingExpression = Nothing
    , _addEndTime = Nothing
    , _addCreateInfo = Nothing
    , _addLastModifiedInfo = Nothing
    , _addId = Nothing
    , _addSslRequired = Nothing
    , _addComments = Nothing
    , _addSubaccountId = Nothing
    , _addType = Nothing
    , _addRemarketingListExpression = Nothing
    , _addDynamicClickTracker = Nothing
    , _addCompatibility = Nothing
    , _addArchived = Nothing
    , _addDefaultClickThroughEventTagProperties = Nothing
    , _addPlacementAssignments = Nothing
    }

-- | Creative group assignments for this ad. Applicable when type is
-- AD_SERVING_CLICK_TRACKER. Only one assignment per creative group number
-- is allowed for a maximum of two assignments.
addCreativeGroupAssignments :: Lens' Ad [Maybe CreativeGroupAssignment]
addCreativeGroupAssignments
  = lens _addCreativeGroupAssignments
      (\ s a -> s{_addCreativeGroupAssignments = a})
      . _Default
      . _Coerce

-- | Geographical targeting information for this ad.Applicable when type is
-- AD_SERVING_STANDARD_AD.
addGeoTargeting :: Lens' Ad (Maybe (Maybe GeoTargeting))
addGeoTargeting
  = lens _addGeoTargeting
      (\ s a -> s{_addGeoTargeting = a})

-- | Creative rotation for this ad. Applicable when type is
-- AD_SERVING_DEFAULT_AD, AD_SERVING_STANDARD_AD, or AD_SERVING_TRACKING.
-- When type is AD_SERVING_DEFAULT_AD, this field should have exactly one
-- creativeAssignment.
addCreativeRotation :: Lens' Ad (Maybe (Maybe CreativeRotation))
addCreativeRotation
  = lens _addCreativeRotation
      (\ s a -> s{_addCreativeRotation = a})

-- | Technology platform targeting information for this ad. Applicable when
-- type is AD_SERVING_STANDARD_AD.
addTechnologyTargeting :: Lens' Ad (Maybe (Maybe TechnologyTargeting))
addTechnologyTargeting
  = lens _addTechnologyTargeting
      (\ s a -> s{_addTechnologyTargeting = a})

-- | Audience segment ID that is being targeted for this ad. Applicable when
-- type is AD_SERVING_STANDARD_AD.
addAudienceSegmentId :: Lens' Ad (Maybe Int64)
addAudienceSegmentId
  = lens _addAudienceSegmentId
      (\ s a -> s{_addAudienceSegmentId = a})

-- | Time and day targeting information for this ad. Applicable when type is
-- AD_SERVING_STANDARD_AD.
addDayPartTargeting :: Lens' Ad (Maybe (Maybe DayPartTargeting))
addDayPartTargeting
  = lens _addDayPartTargeting
      (\ s a -> s{_addDayPartTargeting = a})

-- | Size of this ad. Applicable when type is AD_SERVING_DEFAULT_AD.
addSize :: Lens' Ad (Maybe (Maybe Size))
addSize = lens _addSize (\ s a -> s{_addSize = a})

-- | Date and time that this ad should start serving. If creating an ad, this
-- field must be a time in the future. This is a required field on
-- insertion.
addStartTime :: Lens' Ad (Maybe UTCTime)
addStartTime
  = lens _addStartTime (\ s a -> s{_addStartTime = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#ad\".
addKind :: Lens' Ad Text
addKind = lens _addKind (\ s a -> s{_addKind = a})

-- | Click-through URL suffix properties for this ad. Applies to the URL in
-- the ad or (if overriding ad properties) the URL in the creative.
addClickThroughUrlSuffixProperties :: Lens' Ad (Maybe (Maybe ClickThroughUrlSuffixProperties))
addClickThroughUrlSuffixProperties
  = lens _addClickThroughUrlSuffixProperties
      (\ s a -> s{_addClickThroughUrlSuffixProperties = a})

-- | Dimension value for the ID of the campaign. This is a read-only,
-- auto-generated field.
addCampaignIdDimensionValue :: Lens' Ad (Maybe (Maybe DimensionValue))
addCampaignIdDimensionValue
  = lens _addCampaignIdDimensionValue
      (\ s a -> s{_addCampaignIdDimensionValue = a})

-- | Advertiser ID of this ad. This is a required field on insertion.
addAdvertiserId :: Lens' Ad (Maybe Int64)
addAdvertiserId
  = lens _addAdvertiserId
      (\ s a -> s{_addAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
addAdvertiserIdDimensionValue :: Lens' Ad (Maybe (Maybe DimensionValue))
addAdvertiserIdDimensionValue
  = lens _addAdvertiserIdDimensionValue
      (\ s a -> s{_addAdvertiserIdDimensionValue = a})

-- | Whether this ad is ssl compliant. This is a read-only field that is
-- auto-generated when the ad is inserted or updated.
addSslCompliant :: Lens' Ad (Maybe Bool)
addSslCompliant
  = lens _addSslCompliant
      (\ s a -> s{_addSslCompliant = a})

-- | Campaign ID of this ad. This is a required field on insertion.
addCampaignId :: Lens' Ad (Maybe Int64)
addCampaignId
  = lens _addCampaignId
      (\ s a -> s{_addCampaignId = a})

-- | Dimension value for the ID of this ad. This is a read-only,
-- auto-generated field.
addIdDimensionValue :: Lens' Ad (Maybe (Maybe DimensionValue))
addIdDimensionValue
  = lens _addIdDimensionValue
      (\ s a -> s{_addIdDimensionValue = a})

-- | Click-through URL for this ad. This is a required field on insertion.
-- Applicable when type is AD_SERVING_CLICK_TRACKER.
addClickThroughUrl :: Lens' Ad (Maybe (Maybe ClickThroughUrl))
addClickThroughUrl
  = lens _addClickThroughUrl
      (\ s a -> s{_addClickThroughUrl = a})

-- | Delivery schedule information for this ad. Applicable when type is
-- AD_SERVING_STANDARD_AD or AD_SERVING_TRACKING. This field along with
-- subfields priority and impressionRatio are required on insertion when
-- type is AD_SERVING_STANDARD_AD.
addDeliverySchedule :: Lens' Ad (Maybe (Maybe DeliverySchedule))
addDeliverySchedule
  = lens _addDeliverySchedule
      (\ s a -> s{_addDeliverySchedule = a})

-- | Event tag overrides for this ad.
addEventTagOverrides :: Lens' Ad [Maybe EventTagOverride]
addEventTagOverrides
  = lens _addEventTagOverrides
      (\ s a -> s{_addEventTagOverrides = a})
      . _Default
      . _Coerce

-- | Whether this ad is active.
addActive :: Lens' Ad (Maybe Bool)
addActive
  = lens _addActive (\ s a -> s{_addActive = a})

-- | Account ID of this ad. This is a read-only field that can be left blank.
addAccountId :: Lens' Ad (Maybe Int64)
addAccountId
  = lens _addAccountId (\ s a -> s{_addAccountId = a})

-- | Name of this ad. This is a required field and must be less than 256
-- characters long.
addName :: Lens' Ad (Maybe Text)
addName = lens _addName (\ s a -> s{_addName = a})

-- | Key-value targeting information for this ad. Applicable when type is
-- AD_SERVING_STANDARD_AD.
addKeyValueTargetingExpression :: Lens' Ad (Maybe (Maybe KeyValueTargetingExpression))
addKeyValueTargetingExpression
  = lens _addKeyValueTargetingExpression
      (\ s a -> s{_addKeyValueTargetingExpression = a})

-- | Date and time that this ad should stop serving. Must be later than the
-- start time. This is a required field on insertion.
addEndTime :: Lens' Ad (Maybe UTCTime)
addEndTime
  = lens _addEndTime (\ s a -> s{_addEndTime = a})

-- | Information about the creation of this ad.This is a read-only field.
addCreateInfo :: Lens' Ad (Maybe (Maybe LastModifiedInfo))
addCreateInfo
  = lens _addCreateInfo
      (\ s a -> s{_addCreateInfo = a})

-- | Information about the most recent modification of this ad. This is a
-- read-only field.
addLastModifiedInfo :: Lens' Ad (Maybe (Maybe LastModifiedInfo))
addLastModifiedInfo
  = lens _addLastModifiedInfo
      (\ s a -> s{_addLastModifiedInfo = a})

-- | ID of this ad. This is a read-only, auto-generated field.
addId :: Lens' Ad (Maybe Int64)
addId = lens _addId (\ s a -> s{_addId = a})

-- | Whether this ad requires ssl. This is a read-only field that is
-- auto-generated when the ad is inserted or updated.
addSslRequired :: Lens' Ad (Maybe Bool)
addSslRequired
  = lens _addSslRequired
      (\ s a -> s{_addSslRequired = a})

-- | Comments for this ad.
addComments :: Lens' Ad (Maybe Text)
addComments
  = lens _addComments (\ s a -> s{_addComments = a})

-- | Subaccount ID of this ad. This is a read-only field that can be left
-- blank.
addSubaccountId :: Lens' Ad (Maybe Int64)
addSubaccountId
  = lens _addSubaccountId
      (\ s a -> s{_addSubaccountId = a})

-- | Type of ad. This is a required field on insertion. Note that default ads
-- (AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative
-- resource).
addType :: Lens' Ad (Maybe AdType)
addType = lens _addType (\ s a -> s{_addType = a})

-- | Applicable when type is AD_SERVING_STANDARD_AD. Remarketing list
-- targeting expression for this ad.
addRemarketingListExpression :: Lens' Ad (Maybe (Maybe ListTargetingExpression))
addRemarketingListExpression
  = lens _addRemarketingListExpression
      (\ s a -> s{_addRemarketingListExpression = a})

-- | Whether this ad is a dynamic click tracker. Applicable when type is
-- AD_SERVING_CLICK_TRACKER. This is a required field on insert, and is
-- read-only after insert.
addDynamicClickTracker :: Lens' Ad (Maybe Bool)
addDynamicClickTracker
  = lens _addDynamicClickTracker
      (\ s a -> s{_addDynamicClickTracker = a})

-- | Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads, respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO
-- refers to rendering an in-stream video ads developed with the VAST
-- standard.
addCompatibility :: Lens' Ad (Maybe AdCompatibility)
addCompatibility
  = lens _addCompatibility
      (\ s a -> s{_addCompatibility = a})

-- | Whether this ad is archived.
addArchived :: Lens' Ad (Maybe Bool)
addArchived
  = lens _addArchived (\ s a -> s{_addArchived = a})

-- | Default click-through event tag properties for this ad.
addDefaultClickThroughEventTagProperties :: Lens' Ad (Maybe (Maybe DefaultClickThroughEventTagProperties))
addDefaultClickThroughEventTagProperties
  = lens _addDefaultClickThroughEventTagProperties
      (\ s a ->
         s{_addDefaultClickThroughEventTagProperties = a})

-- | Placement assignments for this ad.
addPlacementAssignments :: Lens' Ad [Maybe PlacementAssignment]
addPlacementAssignments
  = lens _addPlacementAssignments
      (\ s a -> s{_addPlacementAssignments = a})
      . _Default
      . _Coerce

instance FromJSON Ad where
        parseJSON
          = withObject "Ad"
              (\ o ->
                 Ad <$>
                   (o .:? "creativeGroupAssignments" .!= mempty) <*>
                     (o .:? "geoTargeting")
                     <*> (o .:? "creativeRotation")
                     <*> (o .:? "technologyTargeting")
                     <*> (o .:? "audienceSegmentId")
                     <*> (o .:? "dayPartTargeting")
                     <*> (o .:? "size")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "dfareporting#ad")
                     <*> (o .:? "clickThroughUrlSuffixProperties")
                     <*> (o .:? "campaignIdDimensionValue")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "sslCompliant")
                     <*> (o .:? "campaignId")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "clickThroughUrl")
                     <*> (o .:? "deliverySchedule")
                     <*> (o .:? "eventTagOverrides" .!= mempty)
                     <*> (o .:? "active")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "keyValueTargetingExpression")
                     <*> (o .:? "endTime")
                     <*> (o .:? "createInfo")
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "sslRequired")
                     <*> (o .:? "comments")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "type")
                     <*> (o .:? "remarketingListExpression")
                     <*> (o .:? "dynamicClickTracker")
                     <*> (o .:? "compatibility")
                     <*> (o .:? "archived")
                     <*> (o .:? "defaultClickThroughEventTagProperties")
                     <*> (o .:? "placementAssignments" .!= mempty))

instance ToJSON Ad where
        toJSON Ad{..}
          = object
              (catMaybes
                 [("creativeGroupAssignments" .=) <$>
                    _addCreativeGroupAssignments,
                  ("geoTargeting" .=) <$> _addGeoTargeting,
                  ("creativeRotation" .=) <$> _addCreativeRotation,
                  ("technologyTargeting" .=) <$>
                    _addTechnologyTargeting,
                  ("audienceSegmentId" .=) <$> _addAudienceSegmentId,
                  ("dayPartTargeting" .=) <$> _addDayPartTargeting,
                  ("size" .=) <$> _addSize,
                  ("startTime" .=) <$> _addStartTime,
                  Just ("kind" .= _addKind),
                  ("clickThroughUrlSuffixProperties" .=) <$>
                    _addClickThroughUrlSuffixProperties,
                  ("campaignIdDimensionValue" .=) <$>
                    _addCampaignIdDimensionValue,
                  ("advertiserId" .=) <$> _addAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _addAdvertiserIdDimensionValue,
                  ("sslCompliant" .=) <$> _addSslCompliant,
                  ("campaignId" .=) <$> _addCampaignId,
                  ("idDimensionValue" .=) <$> _addIdDimensionValue,
                  ("clickThroughUrl" .=) <$> _addClickThroughUrl,
                  ("deliverySchedule" .=) <$> _addDeliverySchedule,
                  ("eventTagOverrides" .=) <$> _addEventTagOverrides,
                  ("active" .=) <$> _addActive,
                  ("accountId" .=) <$> _addAccountId,
                  ("name" .=) <$> _addName,
                  ("keyValueTargetingExpression" .=) <$>
                    _addKeyValueTargetingExpression,
                  ("endTime" .=) <$> _addEndTime,
                  ("createInfo" .=) <$> _addCreateInfo,
                  ("lastModifiedInfo" .=) <$> _addLastModifiedInfo,
                  ("id" .=) <$> _addId,
                  ("sslRequired" .=) <$> _addSslRequired,
                  ("comments" .=) <$> _addComments,
                  ("subaccountId" .=) <$> _addSubaccountId,
                  ("type" .=) <$> _addType,
                  ("remarketingListExpression" .=) <$>
                    _addRemarketingListExpression,
                  ("dynamicClickTracker" .=) <$>
                    _addDynamicClickTracker,
                  ("compatibility" .=) <$> _addCompatibility,
                  ("archived" .=) <$> _addArchived,
                  ("defaultClickThroughEventTagProperties" .=) <$>
                    _addDefaultClickThroughEventTagProperties,
                  ("placementAssignments" .=) <$>
                    _addPlacementAssignments])

-- | Ad Slot
--
-- /See:/ 'adSlot' smart constructor.
data AdSlot = AdSlot
    { _adHeight            :: !(Maybe Int64)
    , _adPaymentSourceType :: !(Maybe AdSlotPaymentSourceType)
    , _adLinkedPlacementId :: !(Maybe Int64)
    , _adWidth             :: !(Maybe Int64)
    , _adPrimary           :: !(Maybe Bool)
    , _adName              :: !(Maybe Text)
    , _adComment           :: !(Maybe Text)
    , _adCompatibility     :: !(Maybe AdSlotCompatibility)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdSlot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adHeight'
--
-- * 'adPaymentSourceType'
--
-- * 'adLinkedPlacementId'
--
-- * 'adWidth'
--
-- * 'adPrimary'
--
-- * 'adName'
--
-- * 'adComment'
--
-- * 'adCompatibility'
adSlot
    :: AdSlot
adSlot =
    AdSlot
    { _adHeight = Nothing
    , _adPaymentSourceType = Nothing
    , _adLinkedPlacementId = Nothing
    , _adWidth = Nothing
    , _adPrimary = Nothing
    , _adName = Nothing
    , _adComment = Nothing
    , _adCompatibility = Nothing
    }

-- | Height of this ad slot.
adHeight :: Lens' AdSlot (Maybe Int64)
adHeight = lens _adHeight (\ s a -> s{_adHeight = a})

-- | Payment source type of this ad slot.
adPaymentSourceType :: Lens' AdSlot (Maybe AdSlotPaymentSourceType)
adPaymentSourceType
  = lens _adPaymentSourceType
      (\ s a -> s{_adPaymentSourceType = a})

-- | ID of the placement from an external platform that is linked to this ad
-- slot.
adLinkedPlacementId :: Lens' AdSlot (Maybe Int64)
adLinkedPlacementId
  = lens _adLinkedPlacementId
      (\ s a -> s{_adLinkedPlacementId = a})

-- | Width of this ad slot.
adWidth :: Lens' AdSlot (Maybe Int64)
adWidth = lens _adWidth (\ s a -> s{_adWidth = a})

-- | Primary ad slot of a roadblock inventory item.
adPrimary :: Lens' AdSlot (Maybe Bool)
adPrimary
  = lens _adPrimary (\ s a -> s{_adPrimary = a})

-- | Name of this ad slot.
adName :: Lens' AdSlot (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | Comment for this ad slot.
adComment :: Lens' AdSlot (Maybe Text)
adComment
  = lens _adComment (\ s a -> s{_adComment = a})

-- | Ad slot compatibility. WEB and WEB_INTERSTITIAL refer to rendering
-- either on desktop or on mobile devices for regular or interstitial ads
-- respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps.
-- IN_STREAM_VIDEO refers to rendering in in-stream video ads developed
-- with the VAST standard.
adCompatibility :: Lens' AdSlot (Maybe AdSlotCompatibility)
adCompatibility
  = lens _adCompatibility
      (\ s a -> s{_adCompatibility = a})

instance FromJSON AdSlot where
        parseJSON
          = withObject "AdSlot"
              (\ o ->
                 AdSlot <$>
                   (o .:? "height") <*> (o .:? "paymentSourceType") <*>
                     (o .:? "linkedPlacementId")
                     <*> (o .:? "width")
                     <*> (o .:? "primary")
                     <*> (o .:? "name")
                     <*> (o .:? "comment")
                     <*> (o .:? "compatibility"))

instance ToJSON AdSlot where
        toJSON AdSlot{..}
          = object
              (catMaybes
                 [("height" .=) <$> _adHeight,
                  ("paymentSourceType" .=) <$> _adPaymentSourceType,
                  ("linkedPlacementId" .=) <$> _adLinkedPlacementId,
                  ("width" .=) <$> _adWidth,
                  ("primary" .=) <$> _adPrimary,
                  ("name" .=) <$> _adName,
                  ("comment" .=) <$> _adComment,
                  ("compatibility" .=) <$> _adCompatibility])

-- | Ad List Response
--
-- /See:/ 'adsListResponse' smart constructor.
data AdsListResponse = AdsListResponse
    { _adsNextPageToken :: !(Maybe Text)
    , _adsKind          :: !Text
    , _adsAds           :: !(Maybe [Maybe Ad])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsNextPageToken'
--
-- * 'adsKind'
--
-- * 'adsAds'
adsListResponse
    :: AdsListResponse
adsListResponse =
    AdsListResponse
    { _adsNextPageToken = Nothing
    , _adsKind = "dfareporting#adsListResponse"
    , _adsAds = Nothing
    }

-- | Pagination token to be used for the next list operation.
adsNextPageToken :: Lens' AdsListResponse (Maybe Text)
adsNextPageToken
  = lens _adsNextPageToken
      (\ s a -> s{_adsNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#adsListResponse\".
adsKind :: Lens' AdsListResponse Text
adsKind = lens _adsKind (\ s a -> s{_adsKind = a})

-- | Ad collection.
adsAds :: Lens' AdsListResponse [Maybe Ad]
adsAds
  = lens _adsAds (\ s a -> s{_adsAds = a}) . _Default .
      _Coerce

instance FromJSON AdsListResponse where
        parseJSON
          = withObject "AdsListResponse"
              (\ o ->
                 AdsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dfareporting#adsListResponse")
                     <*> (o .:? "ads" .!= mempty))

instance ToJSON AdsListResponse where
        toJSON AdsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _adsNextPageToken,
                  Just ("kind" .= _adsKind), ("ads" .=) <$> _adsAds])

-- | Contains properties of a DCM advertiser.
--
-- /See:/ 'advertiser' smart constructor.
data Advertiser = Advertiser
    { _aOriginalFloodlightConfigurationId       :: !(Maybe Int64)
    , _aStatus                                  :: !(Maybe AdvertiserStatus)
    , _aFloodlightConfigurationId               :: !(Maybe Int64)
    , _aKind                                    :: !Text
    , _aSuspended                               :: !(Maybe Bool)
    , _aIdDimensionValue                        :: !(Maybe (Maybe DimensionValue))
    , _aAccountId                               :: !(Maybe Int64)
    , _aDefaultEmail                            :: !(Maybe Text)
    , _aName                                    :: !(Maybe Text)
    , _aAdvertiserGroupId                       :: !(Maybe Int64)
    , _aDefaultClickThroughEventTagId           :: !(Maybe Int64)
    , _aId                                      :: !(Maybe Int64)
    , _aSubaccountId                            :: !(Maybe Int64)
    , _aFloodlightConfigurationIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _aClickThroughUrlSuffix                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Advertiser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aOriginalFloodlightConfigurationId'
--
-- * 'aStatus'
--
-- * 'aFloodlightConfigurationId'
--
-- * 'aKind'
--
-- * 'aSuspended'
--
-- * 'aIdDimensionValue'
--
-- * 'aAccountId'
--
-- * 'aDefaultEmail'
--
-- * 'aName'
--
-- * 'aAdvertiserGroupId'
--
-- * 'aDefaultClickThroughEventTagId'
--
-- * 'aId'
--
-- * 'aSubaccountId'
--
-- * 'aFloodlightConfigurationIdDimensionValue'
--
-- * 'aClickThroughUrlSuffix'
advertiser
    :: Advertiser
advertiser =
    Advertiser
    { _aOriginalFloodlightConfigurationId = Nothing
    , _aStatus = Nothing
    , _aFloodlightConfigurationId = Nothing
    , _aKind = "dfareporting#advertiser"
    , _aSuspended = Nothing
    , _aIdDimensionValue = Nothing
    , _aAccountId = Nothing
    , _aDefaultEmail = Nothing
    , _aName = Nothing
    , _aAdvertiserGroupId = Nothing
    , _aDefaultClickThroughEventTagId = Nothing
    , _aId = Nothing
    , _aSubaccountId = Nothing
    , _aFloodlightConfigurationIdDimensionValue = Nothing
    , _aClickThroughUrlSuffix = Nothing
    }

-- | Original floodlight configuration before any sharing occurred. Set the
-- floodlightConfigurationId of this advertiser to
-- originalFloodlightConfigurationId to unshare the advertiser\'s current
-- floodlight configuration. You cannot unshare an advertiser\'s floodlight
-- configuration if the shared configuration has activities associated with
-- any campaign or placement.
aOriginalFloodlightConfigurationId :: Lens' Advertiser (Maybe Int64)
aOriginalFloodlightConfigurationId
  = lens _aOriginalFloodlightConfigurationId
      (\ s a -> s{_aOriginalFloodlightConfigurationId = a})

-- | Status of this advertiser.
aStatus :: Lens' Advertiser (Maybe AdvertiserStatus)
aStatus = lens _aStatus (\ s a -> s{_aStatus = a})

-- | Floodlight configuration ID of this advertiser. The floodlight
-- configuration ID will be created automatically, so on insert this field
-- should be left blank. This field can be set to another advertiser\'s
-- floodlight configuration ID in order to share that advertiser\'s
-- floodlight configuration with this advertiser, so long as: - This
-- advertiser\'s original floodlight configuration is not already
-- associated with floodlight activities or floodlight activity groups. -
-- This advertiser\'s original floodlight configuration is not already
-- shared with another advertiser.
aFloodlightConfigurationId :: Lens' Advertiser (Maybe Int64)
aFloodlightConfigurationId
  = lens _aFloodlightConfigurationId
      (\ s a -> s{_aFloodlightConfigurationId = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#advertiser\".
aKind :: Lens' Advertiser Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Suspension status of this advertiser.
aSuspended :: Lens' Advertiser (Maybe Bool)
aSuspended
  = lens _aSuspended (\ s a -> s{_aSuspended = a})

-- | Dimension value for the ID of this advertiser. This is a read-only,
-- auto-generated field.
aIdDimensionValue :: Lens' Advertiser (Maybe (Maybe DimensionValue))
aIdDimensionValue
  = lens _aIdDimensionValue
      (\ s a -> s{_aIdDimensionValue = a})

-- | Account ID of this advertiser.This is a read-only field that can be left
-- blank.
aAccountId :: Lens' Advertiser (Maybe Int64)
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | Default email address used in sender field for tag emails.
aDefaultEmail :: Lens' Advertiser (Maybe Text)
aDefaultEmail
  = lens _aDefaultEmail
      (\ s a -> s{_aDefaultEmail = a})

-- | Name of this advertiser. This is a required field and must be less than
-- 256 characters long and unique among advertisers of the same account.
aName :: Lens' Advertiser (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | ID of the advertiser group this advertiser belongs to. You can group
-- advertisers for reporting purposes, allowing you to see aggregated
-- information for all advertisers in each group.
aAdvertiserGroupId :: Lens' Advertiser (Maybe Int64)
aAdvertiserGroupId
  = lens _aAdvertiserGroupId
      (\ s a -> s{_aAdvertiserGroupId = a})

-- | ID of the click-through event tag to apply by default to the landing
-- pages of this advertiser\'s campaigns.
aDefaultClickThroughEventTagId :: Lens' Advertiser (Maybe Int64)
aDefaultClickThroughEventTagId
  = lens _aDefaultClickThroughEventTagId
      (\ s a -> s{_aDefaultClickThroughEventTagId = a})

-- | ID of this advertiser. This is a read-only, auto-generated field.
aId :: Lens' Advertiser (Maybe Int64)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Subaccount ID of this advertiser.This is a read-only field that can be
-- left blank.
aSubaccountId :: Lens' Advertiser (Maybe Int64)
aSubaccountId
  = lens _aSubaccountId
      (\ s a -> s{_aSubaccountId = a})

-- | Dimension value for the ID of the floodlight configuration. This is a
-- read-only, auto-generated field.
aFloodlightConfigurationIdDimensionValue :: Lens' Advertiser (Maybe (Maybe DimensionValue))
aFloodlightConfigurationIdDimensionValue
  = lens _aFloodlightConfigurationIdDimensionValue
      (\ s a ->
         s{_aFloodlightConfigurationIdDimensionValue = a})

-- | Suffix added to click-through URL of ad creative associations under this
-- advertiser. Must be less than 129 characters long.
aClickThroughUrlSuffix :: Lens' Advertiser (Maybe Text)
aClickThroughUrlSuffix
  = lens _aClickThroughUrlSuffix
      (\ s a -> s{_aClickThroughUrlSuffix = a})

instance FromJSON Advertiser where
        parseJSON
          = withObject "Advertiser"
              (\ o ->
                 Advertiser <$>
                   (o .:? "originalFloodlightConfigurationId") <*>
                     (o .:? "status")
                     <*> (o .:? "floodlightConfigurationId")
                     <*> (o .:? "kind" .!= "dfareporting#advertiser")
                     <*> (o .:? "suspended")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "defaultEmail")
                     <*> (o .:? "name")
                     <*> (o .:? "advertiserGroupId")
                     <*> (o .:? "defaultClickThroughEventTagId")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "floodlightConfigurationIdDimensionValue")
                     <*> (o .:? "clickThroughUrlSuffix"))

instance ToJSON Advertiser where
        toJSON Advertiser{..}
          = object
              (catMaybes
                 [("originalFloodlightConfigurationId" .=) <$>
                    _aOriginalFloodlightConfigurationId,
                  ("status" .=) <$> _aStatus,
                  ("floodlightConfigurationId" .=) <$>
                    _aFloodlightConfigurationId,
                  Just ("kind" .= _aKind),
                  ("suspended" .=) <$> _aSuspended,
                  ("idDimensionValue" .=) <$> _aIdDimensionValue,
                  ("accountId" .=) <$> _aAccountId,
                  ("defaultEmail" .=) <$> _aDefaultEmail,
                  ("name" .=) <$> _aName,
                  ("advertiserGroupId" .=) <$> _aAdvertiserGroupId,
                  ("defaultClickThroughEventTagId" .=) <$>
                    _aDefaultClickThroughEventTagId,
                  ("id" .=) <$> _aId,
                  ("subaccountId" .=) <$> _aSubaccountId,
                  ("floodlightConfigurationIdDimensionValue" .=) <$>
                    _aFloodlightConfigurationIdDimensionValue,
                  ("clickThroughUrlSuffix" .=) <$>
                    _aClickThroughUrlSuffix])

-- | Groups advertisers together so that reports can be generated for the
-- entire group at once.
--
-- /See:/ 'advertiserGroup' smart constructor.
data AdvertiserGroup = AdvertiserGroup
    { _agKind      :: !Text
    , _agAccountId :: !(Maybe Int64)
    , _agName      :: !(Maybe Text)
    , _agId        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agKind'
--
-- * 'agAccountId'
--
-- * 'agName'
--
-- * 'agId'
advertiserGroup
    :: AdvertiserGroup
advertiserGroup =
    AdvertiserGroup
    { _agKind = "dfareporting#advertiserGroup"
    , _agAccountId = Nothing
    , _agName = Nothing
    , _agId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#advertiserGroup\".
agKind :: Lens' AdvertiserGroup Text
agKind = lens _agKind (\ s a -> s{_agKind = a})

-- | Account ID of this advertiser group. This is a read-only field that can
-- be left blank.
agAccountId :: Lens' AdvertiserGroup (Maybe Int64)
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a})

-- | Name of this advertiser group. This is a required field and must be less
-- than 256 characters long and unique among advertiser groups of the same
-- account.
agName :: Lens' AdvertiserGroup (Maybe Text)
agName = lens _agName (\ s a -> s{_agName = a})

-- | ID of this advertiser group. This is a read-only, auto-generated field.
agId :: Lens' AdvertiserGroup (Maybe Int64)
agId = lens _agId (\ s a -> s{_agId = a})

instance FromJSON AdvertiserGroup where
        parseJSON
          = withObject "AdvertiserGroup"
              (\ o ->
                 AdvertiserGroup <$>
                   (o .:? "kind" .!= "dfareporting#advertiserGroup") <*>
                     (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON AdvertiserGroup where
        toJSON AdvertiserGroup{..}
          = object
              (catMaybes
                 [Just ("kind" .= _agKind),
                  ("accountId" .=) <$> _agAccountId,
                  ("name" .=) <$> _agName, ("id" .=) <$> _agId])

-- | Advertiser Group List Response
--
-- /See:/ 'advertiserGroupsListResponse' smart constructor.
data AdvertiserGroupsListResponse = AdvertiserGroupsListResponse
    { _aglrNextPageToken    :: !(Maybe Text)
    , _aglrKind             :: !Text
    , _aglrAdvertiserGroups :: !(Maybe [Maybe AdvertiserGroup])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aglrNextPageToken'
--
-- * 'aglrKind'
--
-- * 'aglrAdvertiserGroups'
advertiserGroupsListResponse
    :: AdvertiserGroupsListResponse
advertiserGroupsListResponse =
    AdvertiserGroupsListResponse
    { _aglrNextPageToken = Nothing
    , _aglrKind = "dfareporting#advertiserGroupsListResponse"
    , _aglrAdvertiserGroups = Nothing
    }

-- | Pagination token to be used for the next list operation.
aglrNextPageToken :: Lens' AdvertiserGroupsListResponse (Maybe Text)
aglrNextPageToken
  = lens _aglrNextPageToken
      (\ s a -> s{_aglrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#advertiserGroupsListResponse\".
aglrKind :: Lens' AdvertiserGroupsListResponse Text
aglrKind = lens _aglrKind (\ s a -> s{_aglrKind = a})

-- | Advertiser group collection.
aglrAdvertiserGroups :: Lens' AdvertiserGroupsListResponse [Maybe AdvertiserGroup]
aglrAdvertiserGroups
  = lens _aglrAdvertiserGroups
      (\ s a -> s{_aglrAdvertiserGroups = a})
      . _Default
      . _Coerce

instance FromJSON AdvertiserGroupsListResponse where
        parseJSON
          = withObject "AdvertiserGroupsListResponse"
              (\ o ->
                 AdvertiserGroupsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#advertiserGroupsListResponse")
                     <*> (o .:? "advertiserGroups" .!= mempty))

instance ToJSON AdvertiserGroupsListResponse where
        toJSON AdvertiserGroupsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _aglrNextPageToken,
                  Just ("kind" .= _aglrKind),
                  ("advertiserGroups" .=) <$> _aglrAdvertiserGroups])

-- | Advertiser List Response
--
-- /See:/ 'advertisersListResponse' smart constructor.
data AdvertisersListResponse = AdvertisersListResponse
    { _alrNextPageToken :: !(Maybe Text)
    , _alrKind          :: !Text
    , _alrAdvertisers   :: !(Maybe [Maybe Advertiser])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrNextPageToken'
--
-- * 'alrKind'
--
-- * 'alrAdvertisers'
advertisersListResponse
    :: AdvertisersListResponse
advertisersListResponse =
    AdvertisersListResponse
    { _alrNextPageToken = Nothing
    , _alrKind = "dfareporting#advertisersListResponse"
    , _alrAdvertisers = Nothing
    }

-- | Pagination token to be used for the next list operation.
alrNextPageToken :: Lens' AdvertisersListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#advertisersListResponse\".
alrKind :: Lens' AdvertisersListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

-- | Advertiser collection.
alrAdvertisers :: Lens' AdvertisersListResponse [Maybe Advertiser]
alrAdvertisers
  = lens _alrAdvertisers
      (\ s a -> s{_alrAdvertisers = a})
      . _Default
      . _Coerce

instance FromJSON AdvertisersListResponse where
        parseJSON
          = withObject "AdvertisersListResponse"
              (\ o ->
                 AdvertisersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#advertisersListResponse")
                     <*> (o .:? "advertisers" .!= mempty))

instance ToJSON AdvertisersListResponse where
        toJSON AdvertisersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrNextPageToken,
                  Just ("kind" .= _alrKind),
                  ("advertisers" .=) <$> _alrAdvertisers])

-- | Audience Segment.
--
-- /See:/ 'audienceSegment' smart constructor.
data AudienceSegment = AudienceSegment
    { _asName       :: !(Maybe Text)
    , _asId         :: !(Maybe Int64)
    , _asAllocation :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudienceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asName'
--
-- * 'asId'
--
-- * 'asAllocation'
audienceSegment
    :: AudienceSegment
audienceSegment =
    AudienceSegment
    { _asName = Nothing
    , _asId = Nothing
    , _asAllocation = Nothing
    }

-- | Name of this audience segment. This is a required field and must be less
-- than 65 characters long.
asName :: Lens' AudienceSegment (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

-- | ID of this audience segment. This is a read-only, auto-generated field.
asId :: Lens' AudienceSegment (Maybe Int64)
asId = lens _asId (\ s a -> s{_asId = a})

-- | Weight allocated to this segment. Must be between 1 and 1000. The weight
-- assigned will be understood in proportion to the weights assigned to
-- other segments in the same segment group.
asAllocation :: Lens' AudienceSegment (Maybe Int32)
asAllocation
  = lens _asAllocation (\ s a -> s{_asAllocation = a})

instance FromJSON AudienceSegment where
        parseJSON
          = withObject "AudienceSegment"
              (\ o ->
                 AudienceSegment <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "allocation"))

instance ToJSON AudienceSegment where
        toJSON AudienceSegment{..}
          = object
              (catMaybes
                 [("name" .=) <$> _asName, ("id" .=) <$> _asId,
                  ("allocation" .=) <$> _asAllocation])

-- | Audience Segment Group.
--
-- /See:/ 'audienceSegmentGroup' smart constructor.
data AudienceSegmentGroup = AudienceSegmentGroup
    { _asgAudienceSegments :: !(Maybe [Maybe AudienceSegment])
    , _asgName             :: !(Maybe Text)
    , _asgId               :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudienceSegmentGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgAudienceSegments'
--
-- * 'asgName'
--
-- * 'asgId'
audienceSegmentGroup
    :: AudienceSegmentGroup
audienceSegmentGroup =
    AudienceSegmentGroup
    { _asgAudienceSegments = Nothing
    , _asgName = Nothing
    , _asgId = Nothing
    }

-- | Audience segments assigned to this group. The number of segments must be
-- between 2 and 100.
asgAudienceSegments :: Lens' AudienceSegmentGroup [Maybe AudienceSegment]
asgAudienceSegments
  = lens _asgAudienceSegments
      (\ s a -> s{_asgAudienceSegments = a})
      . _Default
      . _Coerce

-- | Name of this audience segment group. This is a required field and must
-- be less than 65 characters long.
asgName :: Lens' AudienceSegmentGroup (Maybe Text)
asgName = lens _asgName (\ s a -> s{_asgName = a})

-- | ID of this audience segment group. This is a read-only, auto-generated
-- field.
asgId :: Lens' AudienceSegmentGroup (Maybe Int64)
asgId = lens _asgId (\ s a -> s{_asgId = a})

instance FromJSON AudienceSegmentGroup where
        parseJSON
          = withObject "AudienceSegmentGroup"
              (\ o ->
                 AudienceSegmentGroup <$>
                   (o .:? "audienceSegments" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON AudienceSegmentGroup where
        toJSON AudienceSegmentGroup{..}
          = object
              (catMaybes
                 [("audienceSegments" .=) <$> _asgAudienceSegments,
                  ("name" .=) <$> _asgName, ("id" .=) <$> _asgId])

-- | Contains information about a browser that can be targeted by ads.
--
-- /See:/ 'browser' smart constructor.
data Browser = Browser
    { _bMinorVersion     :: !(Maybe Text)
    , _bKind             :: !Text
    , _bBrowserVersionId :: !(Maybe Int64)
    , _bMajorVersion     :: !(Maybe Text)
    , _bName             :: !(Maybe Text)
    , _bDartId           :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Browser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMinorVersion'
--
-- * 'bKind'
--
-- * 'bBrowserVersionId'
--
-- * 'bMajorVersion'
--
-- * 'bName'
--
-- * 'bDartId'
browser
    :: Browser
browser =
    Browser
    { _bMinorVersion = Nothing
    , _bKind = "dfareporting#browser"
    , _bBrowserVersionId = Nothing
    , _bMajorVersion = Nothing
    , _bName = Nothing
    , _bDartId = Nothing
    }

-- | Minor version number (number after first dot on left) of this browser.
-- For example, for Chrome 5.0.375.86 beta, this field should be set to 0.
-- An asterisk (*) may be used to target any version number, and a question
-- mark (?) may be used to target cases where the version number cannot be
-- identified. For example, Chrome *.* targets any version of Chrome: 1.2,
-- 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0.
-- Firefox ?.? targets cases where the ad server knows the browser is
-- Firefox but can\'t tell which version it is.
bMinorVersion :: Lens' Browser (Maybe Text)
bMinorVersion
  = lens _bMinorVersion
      (\ s a -> s{_bMinorVersion = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#browser\".
bKind :: Lens' Browser Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | ID referring to this grouping of browser and version numbers. This is
-- the ID used for targeting.
bBrowserVersionId :: Lens' Browser (Maybe Int64)
bBrowserVersionId
  = lens _bBrowserVersionId
      (\ s a -> s{_bBrowserVersionId = a})

-- | Major version number (leftmost number) of this browser. For example, for
-- Chrome 5.0.376.86 beta, this field should be set to 5. An asterisk (*)
-- may be used to target any version number, and a question mark (?) may be
-- used to target cases where the version number cannot be identified. For
-- example, Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so
-- on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets
-- cases where the ad server knows the browser is Firefox but can\'t tell
-- which version it is.
bMajorVersion :: Lens' Browser (Maybe Text)
bMajorVersion
  = lens _bMajorVersion
      (\ s a -> s{_bMajorVersion = a})

-- | Name of this browser.
bName :: Lens' Browser (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | DART ID of this browser. This is the ID used when generating reports.
bDartId :: Lens' Browser (Maybe Int64)
bDartId = lens _bDartId (\ s a -> s{_bDartId = a})

instance FromJSON Browser where
        parseJSON
          = withObject "Browser"
              (\ o ->
                 Browser <$>
                   (o .:? "minorVersion") <*>
                     (o .:? "kind" .!= "dfareporting#browser")
                     <*> (o .:? "browserVersionId")
                     <*> (o .:? "majorVersion")
                     <*> (o .:? "name")
                     <*> (o .:? "dartId"))

instance ToJSON Browser where
        toJSON Browser{..}
          = object
              (catMaybes
                 [("minorVersion" .=) <$> _bMinorVersion,
                  Just ("kind" .= _bKind),
                  ("browserVersionId" .=) <$> _bBrowserVersionId,
                  ("majorVersion" .=) <$> _bMajorVersion,
                  ("name" .=) <$> _bName, ("dartId" .=) <$> _bDartId])

-- | Browser List Response
--
-- /See:/ 'browsersListResponse' smart constructor.
data BrowsersListResponse = BrowsersListResponse
    { _blrKind     :: !Text
    , _blrBrowsers :: !(Maybe [Maybe Browser])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BrowsersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blrKind'
--
-- * 'blrBrowsers'
browsersListResponse
    :: BrowsersListResponse
browsersListResponse =
    BrowsersListResponse
    { _blrKind = "dfareporting#browsersListResponse"
    , _blrBrowsers = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#browsersListResponse\".
blrKind :: Lens' BrowsersListResponse Text
blrKind = lens _blrKind (\ s a -> s{_blrKind = a})

-- | Browser collection.
blrBrowsers :: Lens' BrowsersListResponse [Maybe Browser]
blrBrowsers
  = lens _blrBrowsers (\ s a -> s{_blrBrowsers = a}) .
      _Default
      . _Coerce

instance FromJSON BrowsersListResponse where
        parseJSON
          = withObject "BrowsersListResponse"
              (\ o ->
                 BrowsersListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#browsersListResponse")
                     <*> (o .:? "browsers" .!= mempty))

instance ToJSON BrowsersListResponse where
        toJSON BrowsersListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _blrKind),
                  ("browsers" .=) <$> _blrBrowsers])

-- | Contains properties of a DCM campaign.
--
-- /See:/ 'campaign' smart constructor.
data Campaign = Campaign
    { _camCreativeOptimizationConfiguration            :: !(Maybe (Maybe CreativeOptimizationConfiguration))
    , _camCreativeGroupIds                             :: !(Maybe [Int64])
    , _camNielsenOcrEnabled                            :: !(Maybe Bool)
    , _camKind                                         :: !Text
    , _camClickThroughUrlSuffixProperties              :: !(Maybe (Maybe ClickThroughUrlSuffixProperties))
    , _camAdvertiserId                                 :: !(Maybe Int64)
    , _camEndDate                                      :: !(Maybe UTCTime)
    , _camAdvertiserIdDimensionValue                   :: !(Maybe (Maybe DimensionValue))
    , _camIdDimensionValue                             :: !(Maybe (Maybe DimensionValue))
    , _camEventTagOverrides                            :: !(Maybe [Maybe EventTagOverride])
    , _camLookbackConfiguration                        :: !(Maybe (Maybe LookbackConfiguration))
    , _camStartDate                                    :: !(Maybe UTCTime)
    , _camAccountId                                    :: !(Maybe Int64)
    , _camComscoreVceEnabled                           :: !(Maybe Bool)
    , _camName                                         :: !(Maybe Text)
    , _camAdvertiserGroupId                            :: !(Maybe Int64)
    , _camBillingInvoiceCode                           :: !(Maybe Text)
    , _camCreateInfo                                   :: !(Maybe (Maybe LastModifiedInfo))
    , _camLastModifiedInfo                             :: !(Maybe (Maybe LastModifiedInfo))
    , _camId                                           :: !(Maybe Int64)
    , _camSubaccountId                                 :: !(Maybe Int64)
    , _camAdditionalCreativeOptimizationConfigurations :: !(Maybe [Maybe CreativeOptimizationConfiguration])
    , _camExternalId                                   :: !(Maybe Text)
    , _camComment                                      :: !(Maybe Text)
    , _camAudienceSegmentGroups                        :: !(Maybe [Maybe AudienceSegmentGroup])
    , _camArchived                                     :: !(Maybe Bool)
    , _camTraffickerEmails                             :: !(Maybe [Text])
    , _camDefaultClickThroughEventTagProperties        :: !(Maybe (Maybe DefaultClickThroughEventTagProperties))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Campaign' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camCreativeOptimizationConfiguration'
--
-- * 'camCreativeGroupIds'
--
-- * 'camNielsenOcrEnabled'
--
-- * 'camKind'
--
-- * 'camClickThroughUrlSuffixProperties'
--
-- * 'camAdvertiserId'
--
-- * 'camEndDate'
--
-- * 'camAdvertiserIdDimensionValue'
--
-- * 'camIdDimensionValue'
--
-- * 'camEventTagOverrides'
--
-- * 'camLookbackConfiguration'
--
-- * 'camStartDate'
--
-- * 'camAccountId'
--
-- * 'camComscoreVceEnabled'
--
-- * 'camName'
--
-- * 'camAdvertiserGroupId'
--
-- * 'camBillingInvoiceCode'
--
-- * 'camCreateInfo'
--
-- * 'camLastModifiedInfo'
--
-- * 'camId'
--
-- * 'camSubaccountId'
--
-- * 'camAdditionalCreativeOptimizationConfigurations'
--
-- * 'camExternalId'
--
-- * 'camComment'
--
-- * 'camAudienceSegmentGroups'
--
-- * 'camArchived'
--
-- * 'camTraffickerEmails'
--
-- * 'camDefaultClickThroughEventTagProperties'
campaign
    :: Campaign
campaign =
    Campaign
    { _camCreativeOptimizationConfiguration = Nothing
    , _camCreativeGroupIds = Nothing
    , _camNielsenOcrEnabled = Nothing
    , _camKind = "dfareporting#campaign"
    , _camClickThroughUrlSuffixProperties = Nothing
    , _camAdvertiserId = Nothing
    , _camEndDate = Nothing
    , _camAdvertiserIdDimensionValue = Nothing
    , _camIdDimensionValue = Nothing
    , _camEventTagOverrides = Nothing
    , _camLookbackConfiguration = Nothing
    , _camStartDate = Nothing
    , _camAccountId = Nothing
    , _camComscoreVceEnabled = Nothing
    , _camName = Nothing
    , _camAdvertiserGroupId = Nothing
    , _camBillingInvoiceCode = Nothing
    , _camCreateInfo = Nothing
    , _camLastModifiedInfo = Nothing
    , _camId = Nothing
    , _camSubaccountId = Nothing
    , _camAdditionalCreativeOptimizationConfigurations = Nothing
    , _camExternalId = Nothing
    , _camComment = Nothing
    , _camAudienceSegmentGroups = Nothing
    , _camArchived = Nothing
    , _camTraffickerEmails = Nothing
    , _camDefaultClickThroughEventTagProperties = Nothing
    }

-- | Creative optimization configuration for the campaign.
camCreativeOptimizationConfiguration :: Lens' Campaign (Maybe (Maybe CreativeOptimizationConfiguration))
camCreativeOptimizationConfiguration
  = lens _camCreativeOptimizationConfiguration
      (\ s a ->
         s{_camCreativeOptimizationConfiguration = a})

-- | List of creative group IDs that are assigned to the campaign.
camCreativeGroupIds :: Lens' Campaign [Int64]
camCreativeGroupIds
  = lens _camCreativeGroupIds
      (\ s a -> s{_camCreativeGroupIds = a})
      . _Default
      . _Coerce

-- | Whether Nielsen reports are enabled for this campaign.
camNielsenOcrEnabled :: Lens' Campaign (Maybe Bool)
camNielsenOcrEnabled
  = lens _camNielsenOcrEnabled
      (\ s a -> s{_camNielsenOcrEnabled = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#campaign\".
camKind :: Lens' Campaign Text
camKind = lens _camKind (\ s a -> s{_camKind = a})

-- | Click-through URL suffix override properties for this campaign.
camClickThroughUrlSuffixProperties :: Lens' Campaign (Maybe (Maybe ClickThroughUrlSuffixProperties))
camClickThroughUrlSuffixProperties
  = lens _camClickThroughUrlSuffixProperties
      (\ s a -> s{_camClickThroughUrlSuffixProperties = a})

-- | Advertiser ID of this campaign. This is a required field.
camAdvertiserId :: Lens' Campaign (Maybe Int64)
camAdvertiserId
  = lens _camAdvertiserId
      (\ s a -> s{_camAdvertiserId = a})

-- | Date on which the campaign will stop running. On insert, the end date
-- must be today or a future date. The end date must be later than or be
-- the same as the start date. If, for example, you set 6\/25\/2015 as both
-- the start and end dates, the effective campaign run date is just that
-- day only, 6\/25\/2015. The hours, minutes, and seconds of the end date
-- should not be set, as doing so will result in an error. This is a
-- required field.
camEndDate :: Lens' Campaign (Maybe UTCTime)
camEndDate
  = lens _camEndDate (\ s a -> s{_camEndDate = a})

-- | Dimension value for the advertiser ID of this campaign. This is a
-- read-only, auto-generated field.
camAdvertiserIdDimensionValue :: Lens' Campaign (Maybe (Maybe DimensionValue))
camAdvertiserIdDimensionValue
  = lens _camAdvertiserIdDimensionValue
      (\ s a -> s{_camAdvertiserIdDimensionValue = a})

-- | Dimension value for the ID of this campaign. This is a read-only,
-- auto-generated field.
camIdDimensionValue :: Lens' Campaign (Maybe (Maybe DimensionValue))
camIdDimensionValue
  = lens _camIdDimensionValue
      (\ s a -> s{_camIdDimensionValue = a})

-- | Overrides that can be used to activate or deactivate advertiser event
-- tags.
camEventTagOverrides :: Lens' Campaign [Maybe EventTagOverride]
camEventTagOverrides
  = lens _camEventTagOverrides
      (\ s a -> s{_camEventTagOverrides = a})
      . _Default
      . _Coerce

-- | Lookback window settings for the campaign.
camLookbackConfiguration :: Lens' Campaign (Maybe (Maybe LookbackConfiguration))
camLookbackConfiguration
  = lens _camLookbackConfiguration
      (\ s a -> s{_camLookbackConfiguration = a})

-- | Date on which the campaign starts running. The start date can be any
-- date. The hours, minutes, and seconds of the start date should not be
-- set, as doing so will result in an error. This is a required field.
camStartDate :: Lens' Campaign (Maybe UTCTime)
camStartDate
  = lens _camStartDate (\ s a -> s{_camStartDate = a})

-- | Account ID of this campaign. This is a read-only field that can be left
-- blank.
camAccountId :: Lens' Campaign (Maybe Int64)
camAccountId
  = lens _camAccountId (\ s a -> s{_camAccountId = a})

-- | Whether comScore vCE reports are enabled for this campaign.
camComscoreVceEnabled :: Lens' Campaign (Maybe Bool)
camComscoreVceEnabled
  = lens _camComscoreVceEnabled
      (\ s a -> s{_camComscoreVceEnabled = a})

-- | Name of this campaign. This is a required field and must be less than
-- 256 characters long and unique among campaigns of the same advertiser.
camName :: Lens' Campaign (Maybe Text)
camName = lens _camName (\ s a -> s{_camName = a})

-- | Advertiser group ID of the associated advertiser.
camAdvertiserGroupId :: Lens' Campaign (Maybe Int64)
camAdvertiserGroupId
  = lens _camAdvertiserGroupId
      (\ s a -> s{_camAdvertiserGroupId = a})

-- | Billing invoice code included in the DCM client billing invoices
-- associated with the campaign.
camBillingInvoiceCode :: Lens' Campaign (Maybe Text)
camBillingInvoiceCode
  = lens _camBillingInvoiceCode
      (\ s a -> s{_camBillingInvoiceCode = a})

-- | Information about the creation of this campaign. This is a read-only
-- field.
camCreateInfo :: Lens' Campaign (Maybe (Maybe LastModifiedInfo))
camCreateInfo
  = lens _camCreateInfo
      (\ s a -> s{_camCreateInfo = a})

-- | Information about the most recent modification of this campaign. This is
-- a read-only field.
camLastModifiedInfo :: Lens' Campaign (Maybe (Maybe LastModifiedInfo))
camLastModifiedInfo
  = lens _camLastModifiedInfo
      (\ s a -> s{_camLastModifiedInfo = a})

-- | ID of this campaign. This is a read-only auto-generated field.
camId :: Lens' Campaign (Maybe Int64)
camId = lens _camId (\ s a -> s{_camId = a})

-- | Subaccount ID of this campaign. This is a read-only field that can be
-- left blank.
camSubaccountId :: Lens' Campaign (Maybe Int64)
camSubaccountId
  = lens _camSubaccountId
      (\ s a -> s{_camSubaccountId = a})

-- | Additional creative optimization configurations for the campaign.
camAdditionalCreativeOptimizationConfigurations :: Lens' Campaign [Maybe CreativeOptimizationConfiguration]
camAdditionalCreativeOptimizationConfigurations
  = lens
      _camAdditionalCreativeOptimizationConfigurations
      (\ s a ->
         s{_camAdditionalCreativeOptimizationConfigurations =
             a})
      . _Default
      . _Coerce

-- | External ID for this campaign.
camExternalId :: Lens' Campaign (Maybe Text)
camExternalId
  = lens _camExternalId
      (\ s a -> s{_camExternalId = a})

-- | Arbitrary comments about this campaign. Must be less than 256 characters
-- long.
camComment :: Lens' Campaign (Maybe Text)
camComment
  = lens _camComment (\ s a -> s{_camComment = a})

-- | Audience segment groups assigned to this campaign. Cannot have more than
-- 300 segment groups.
camAudienceSegmentGroups :: Lens' Campaign [Maybe AudienceSegmentGroup]
camAudienceSegmentGroups
  = lens _camAudienceSegmentGroups
      (\ s a -> s{_camAudienceSegmentGroups = a})
      . _Default
      . _Coerce

-- | Whether this campaign has been archived.
camArchived :: Lens' Campaign (Maybe Bool)
camArchived
  = lens _camArchived (\ s a -> s{_camArchived = a})

-- | Campaign trafficker contact emails.
camTraffickerEmails :: Lens' Campaign [Text]
camTraffickerEmails
  = lens _camTraffickerEmails
      (\ s a -> s{_camTraffickerEmails = a})
      . _Default
      . _Coerce

-- | Click-through event tag ID override properties for this campaign.
camDefaultClickThroughEventTagProperties :: Lens' Campaign (Maybe (Maybe DefaultClickThroughEventTagProperties))
camDefaultClickThroughEventTagProperties
  = lens _camDefaultClickThroughEventTagProperties
      (\ s a ->
         s{_camDefaultClickThroughEventTagProperties = a})

instance FromJSON Campaign where
        parseJSON
          = withObject "Campaign"
              (\ o ->
                 Campaign <$>
                   (o .:? "creativeOptimizationConfiguration") <*>
                     (o .:? "creativeGroupIds" .!= mempty)
                     <*> (o .:? "nielsenOcrEnabled")
                     <*> (o .:? "kind" .!= "dfareporting#campaign")
                     <*> (o .:? "clickThroughUrlSuffixProperties")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "endDate")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "eventTagOverrides" .!= mempty)
                     <*> (o .:? "lookbackConfiguration")
                     <*> (o .:? "startDate")
                     <*> (o .:? "accountId")
                     <*> (o .:? "comscoreVceEnabled")
                     <*> (o .:? "name")
                     <*> (o .:? "advertiserGroupId")
                     <*> (o .:? "billingInvoiceCode")
                     <*> (o .:? "createInfo")
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*>
                     (o .:? "additionalCreativeOptimizationConfigurations"
                        .!= mempty)
                     <*> (o .:? "externalId")
                     <*> (o .:? "comment")
                     <*> (o .:? "audienceSegmentGroups" .!= mempty)
                     <*> (o .:? "archived")
                     <*> (o .:? "traffickerEmails" .!= mempty)
                     <*> (o .:? "defaultClickThroughEventTagProperties"))

instance ToJSON Campaign where
        toJSON Campaign{..}
          = object
              (catMaybes
                 [("creativeOptimizationConfiguration" .=) <$>
                    _camCreativeOptimizationConfiguration,
                  ("creativeGroupIds" .=) <$> _camCreativeGroupIds,
                  ("nielsenOcrEnabled" .=) <$> _camNielsenOcrEnabled,
                  Just ("kind" .= _camKind),
                  ("clickThroughUrlSuffixProperties" .=) <$>
                    _camClickThroughUrlSuffixProperties,
                  ("advertiserId" .=) <$> _camAdvertiserId,
                  ("endDate" .=) <$> _camEndDate,
                  ("advertiserIdDimensionValue" .=) <$>
                    _camAdvertiserIdDimensionValue,
                  ("idDimensionValue" .=) <$> _camIdDimensionValue,
                  ("eventTagOverrides" .=) <$> _camEventTagOverrides,
                  ("lookbackConfiguration" .=) <$>
                    _camLookbackConfiguration,
                  ("startDate" .=) <$> _camStartDate,
                  ("accountId" .=) <$> _camAccountId,
                  ("comscoreVceEnabled" .=) <$> _camComscoreVceEnabled,
                  ("name" .=) <$> _camName,
                  ("advertiserGroupId" .=) <$> _camAdvertiserGroupId,
                  ("billingInvoiceCode" .=) <$> _camBillingInvoiceCode,
                  ("createInfo" .=) <$> _camCreateInfo,
                  ("lastModifiedInfo" .=) <$> _camLastModifiedInfo,
                  ("id" .=) <$> _camId,
                  ("subaccountId" .=) <$> _camSubaccountId,
                  ("additionalCreativeOptimizationConfigurations" .=)
                    <$> _camAdditionalCreativeOptimizationConfigurations,
                  ("externalId" .=) <$> _camExternalId,
                  ("comment" .=) <$> _camComment,
                  ("audienceSegmentGroups" .=) <$>
                    _camAudienceSegmentGroups,
                  ("archived" .=) <$> _camArchived,
                  ("traffickerEmails" .=) <$> _camTraffickerEmails,
                  ("defaultClickThroughEventTagProperties" .=) <$>
                    _camDefaultClickThroughEventTagProperties])

-- | Identifies a creative which has been associated with a given campaign.
--
-- /See:/ 'campaignCreativeAssociation' smart constructor.
data CampaignCreativeAssociation = CampaignCreativeAssociation
    { _ccaKind       :: !Text
    , _ccaCreativeId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignCreativeAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaKind'
--
-- * 'ccaCreativeId'
campaignCreativeAssociation
    :: CampaignCreativeAssociation
campaignCreativeAssociation =
    CampaignCreativeAssociation
    { _ccaKind = "dfareporting#campaignCreativeAssociation"
    , _ccaCreativeId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#campaignCreativeAssociation\".
ccaKind :: Lens' CampaignCreativeAssociation Text
ccaKind = lens _ccaKind (\ s a -> s{_ccaKind = a})

-- | ID of the creative associated with the campaign. This is a required
-- field.
ccaCreativeId :: Lens' CampaignCreativeAssociation (Maybe Int64)
ccaCreativeId
  = lens _ccaCreativeId
      (\ s a -> s{_ccaCreativeId = a})

instance FromJSON CampaignCreativeAssociation where
        parseJSON
          = withObject "CampaignCreativeAssociation"
              (\ o ->
                 CampaignCreativeAssociation <$>
                   (o .:? "kind" .!=
                      "dfareporting#campaignCreativeAssociation")
                     <*> (o .:? "creativeId"))

instance ToJSON CampaignCreativeAssociation where
        toJSON CampaignCreativeAssociation{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ccaKind),
                  ("creativeId" .=) <$> _ccaCreativeId])

-- | Campaign Creative Association List Response
--
-- /See:/ 'campaignCreativeAssociationsListResponse' smart constructor.
data CampaignCreativeAssociationsListResponse = CampaignCreativeAssociationsListResponse
    { _ccalrCampaignCreativeAssociations :: !(Maybe [Maybe CampaignCreativeAssociation])
    , _ccalrNextPageToken                :: !(Maybe Text)
    , _ccalrKind                         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignCreativeAssociationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccalrCampaignCreativeAssociations'
--
-- * 'ccalrNextPageToken'
--
-- * 'ccalrKind'
campaignCreativeAssociationsListResponse
    :: CampaignCreativeAssociationsListResponse
campaignCreativeAssociationsListResponse =
    CampaignCreativeAssociationsListResponse
    { _ccalrCampaignCreativeAssociations = Nothing
    , _ccalrNextPageToken = Nothing
    , _ccalrKind = "dfareporting#campaignCreativeAssociationsListResponse"
    }

-- | Campaign creative association collection
ccalrCampaignCreativeAssociations :: Lens' CampaignCreativeAssociationsListResponse [Maybe CampaignCreativeAssociation]
ccalrCampaignCreativeAssociations
  = lens _ccalrCampaignCreativeAssociations
      (\ s a -> s{_ccalrCampaignCreativeAssociations = a})
      . _Default
      . _Coerce

-- | Pagination token to be used for the next list operation.
ccalrNextPageToken :: Lens' CampaignCreativeAssociationsListResponse (Maybe Text)
ccalrNextPageToken
  = lens _ccalrNextPageToken
      (\ s a -> s{_ccalrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#campaignCreativeAssociationsListResponse\".
ccalrKind :: Lens' CampaignCreativeAssociationsListResponse Text
ccalrKind
  = lens _ccalrKind (\ s a -> s{_ccalrKind = a})

instance FromJSON
         CampaignCreativeAssociationsListResponse where
        parseJSON
          = withObject
              "CampaignCreativeAssociationsListResponse"
              (\ o ->
                 CampaignCreativeAssociationsListResponse <$>
                   (o .:? "campaignCreativeAssociations" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#campaignCreativeAssociationsListResponse"))

instance ToJSON
         CampaignCreativeAssociationsListResponse where
        toJSON CampaignCreativeAssociationsListResponse{..}
          = object
              (catMaybes
                 [("campaignCreativeAssociations" .=) <$>
                    _ccalrCampaignCreativeAssociations,
                  ("nextPageToken" .=) <$> _ccalrNextPageToken,
                  Just ("kind" .= _ccalrKind)])

-- | Campaign List Response
--
-- /See:/ 'campaignsListResponse' smart constructor.
data CampaignsListResponse = CampaignsListResponse
    { _clrlNextPageToken :: !(Maybe Text)
    , _clrlCampaigns     :: !(Maybe [Maybe Campaign])
    , _clrlKind          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrlNextPageToken'
--
-- * 'clrlCampaigns'
--
-- * 'clrlKind'
campaignsListResponse
    :: CampaignsListResponse
campaignsListResponse =
    CampaignsListResponse
    { _clrlNextPageToken = Nothing
    , _clrlCampaigns = Nothing
    , _clrlKind = "dfareporting#campaignsListResponse"
    }

-- | Pagination token to be used for the next list operation.
clrlNextPageToken :: Lens' CampaignsListResponse (Maybe Text)
clrlNextPageToken
  = lens _clrlNextPageToken
      (\ s a -> s{_clrlNextPageToken = a})

-- | Campaign collection.
clrlCampaigns :: Lens' CampaignsListResponse [Maybe Campaign]
clrlCampaigns
  = lens _clrlCampaigns
      (\ s a -> s{_clrlCampaigns = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#campaignsListResponse\".
clrlKind :: Lens' CampaignsListResponse Text
clrlKind = lens _clrlKind (\ s a -> s{_clrlKind = a})

instance FromJSON CampaignsListResponse where
        parseJSON
          = withObject "CampaignsListResponse"
              (\ o ->
                 CampaignsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "campaigns" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#campaignsListResponse"))

instance ToJSON CampaignsListResponse where
        toJSON CampaignsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clrlNextPageToken,
                  ("campaigns" .=) <$> _clrlCampaigns,
                  Just ("kind" .= _clrlKind)])

-- | Describes a change that a user has made to a resource.
--
-- /See:/ 'changeLog' smart constructor.
data ChangeLog = ChangeLog
    { _clUserProfileId   :: !(Maybe Int64)
    , _clObjectType      :: !(Maybe Text)
    , _clUserProfileName :: !(Maybe Text)
    , _clKind            :: !Text
    , _clObjectId        :: !(Maybe Int64)
    , _clAction          :: !(Maybe Text)
    , _clTransactionId   :: !(Maybe Int64)
    , _clOldValue        :: !(Maybe Text)
    , _clAccountId       :: !(Maybe Int64)
    , _clNewValue        :: !(Maybe Text)
    , _clFieldName       :: !(Maybe Text)
    , _clId              :: !(Maybe Int64)
    , _clSubaccountId    :: !(Maybe Int64)
    , _clChangeTime      :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clUserProfileId'
--
-- * 'clObjectType'
--
-- * 'clUserProfileName'
--
-- * 'clKind'
--
-- * 'clObjectId'
--
-- * 'clAction'
--
-- * 'clTransactionId'
--
-- * 'clOldValue'
--
-- * 'clAccountId'
--
-- * 'clNewValue'
--
-- * 'clFieldName'
--
-- * 'clId'
--
-- * 'clSubaccountId'
--
-- * 'clChangeTime'
changeLog
    :: ChangeLog
changeLog =
    ChangeLog
    { _clUserProfileId = Nothing
    , _clObjectType = Nothing
    , _clUserProfileName = Nothing
    , _clKind = "dfareporting#changeLog"
    , _clObjectId = Nothing
    , _clAction = Nothing
    , _clTransactionId = Nothing
    , _clOldValue = Nothing
    , _clAccountId = Nothing
    , _clNewValue = Nothing
    , _clFieldName = Nothing
    , _clId = Nothing
    , _clSubaccountId = Nothing
    , _clChangeTime = Nothing
    }

-- | ID of the user who modified the object.
clUserProfileId :: Lens' ChangeLog (Maybe Int64)
clUserProfileId
  = lens _clUserProfileId
      (\ s a -> s{_clUserProfileId = a})

-- | Object type of the change log.
clObjectType :: Lens' ChangeLog (Maybe Text)
clObjectType
  = lens _clObjectType (\ s a -> s{_clObjectType = a})

-- | User profile name of the user who modified the object.
clUserProfileName :: Lens' ChangeLog (Maybe Text)
clUserProfileName
  = lens _clUserProfileName
      (\ s a -> s{_clUserProfileName = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#changeLog\".
clKind :: Lens' ChangeLog Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | ID of the object of this change log. The object could be a campaign,
-- placement, ad, or other type.
clObjectId :: Lens' ChangeLog (Maybe Int64)
clObjectId
  = lens _clObjectId (\ s a -> s{_clObjectId = a})

-- | Action which caused the change.
clAction :: Lens' ChangeLog (Maybe Text)
clAction = lens _clAction (\ s a -> s{_clAction = a})

-- | Transaction ID of this change log. When a single API call results in
-- many changes, each change will have a separate ID in the change log but
-- will share the same transactionId.
clTransactionId :: Lens' ChangeLog (Maybe Int64)
clTransactionId
  = lens _clTransactionId
      (\ s a -> s{_clTransactionId = a})

-- | Old value of the object field.
clOldValue :: Lens' ChangeLog (Maybe Text)
clOldValue
  = lens _clOldValue (\ s a -> s{_clOldValue = a})

-- | Account ID of the modified object.
clAccountId :: Lens' ChangeLog (Maybe Int64)
clAccountId
  = lens _clAccountId (\ s a -> s{_clAccountId = a})

-- | New value of the object field.
clNewValue :: Lens' ChangeLog (Maybe Text)
clNewValue
  = lens _clNewValue (\ s a -> s{_clNewValue = a})

-- | Field name of the object which changed.
clFieldName :: Lens' ChangeLog (Maybe Text)
clFieldName
  = lens _clFieldName (\ s a -> s{_clFieldName = a})

-- | ID of this change log.
clId :: Lens' ChangeLog (Maybe Int64)
clId = lens _clId (\ s a -> s{_clId = a})

-- | Subaccount ID of the modified object.
clSubaccountId :: Lens' ChangeLog (Maybe Int64)
clSubaccountId
  = lens _clSubaccountId
      (\ s a -> s{_clSubaccountId = a})

-- | Time when the object was modified.
clChangeTime :: Lens' ChangeLog (Maybe UTCTime)
clChangeTime
  = lens _clChangeTime (\ s a -> s{_clChangeTime = a})

instance FromJSON ChangeLog where
        parseJSON
          = withObject "ChangeLog"
              (\ o ->
                 ChangeLog <$>
                   (o .:? "userProfileId") <*> (o .:? "objectType") <*>
                     (o .:? "userProfileName")
                     <*> (o .:? "kind" .!= "dfareporting#changeLog")
                     <*> (o .:? "objectId")
                     <*> (o .:? "action")
                     <*> (o .:? "transactionId")
                     <*> (o .:? "oldValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "newValue")
                     <*> (o .:? "fieldName")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "changeTime"))

instance ToJSON ChangeLog where
        toJSON ChangeLog{..}
          = object
              (catMaybes
                 [("userProfileId" .=) <$> _clUserProfileId,
                  ("objectType" .=) <$> _clObjectType,
                  ("userProfileName" .=) <$> _clUserProfileName,
                  Just ("kind" .= _clKind),
                  ("objectId" .=) <$> _clObjectId,
                  ("action" .=) <$> _clAction,
                  ("transactionId" .=) <$> _clTransactionId,
                  ("oldValue" .=) <$> _clOldValue,
                  ("accountId" .=) <$> _clAccountId,
                  ("newValue" .=) <$> _clNewValue,
                  ("fieldName" .=) <$> _clFieldName,
                  ("id" .=) <$> _clId,
                  ("subaccountId" .=) <$> _clSubaccountId,
                  ("changeTime" .=) <$> _clChangeTime])

-- | Change Log List Response
--
-- /See:/ 'changeLogsListResponse' smart constructor.
data ChangeLogsListResponse = ChangeLogsListResponse
    { _cllrNextPageToken :: !(Maybe Text)
    , _cllrKind          :: !Text
    , _cllrChangeLogs    :: !(Maybe [Maybe ChangeLog])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLogsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllrNextPageToken'
--
-- * 'cllrKind'
--
-- * 'cllrChangeLogs'
changeLogsListResponse
    :: ChangeLogsListResponse
changeLogsListResponse =
    ChangeLogsListResponse
    { _cllrNextPageToken = Nothing
    , _cllrKind = "dfareporting#changeLogsListResponse"
    , _cllrChangeLogs = Nothing
    }

-- | Pagination token to be used for the next list operation.
cllrNextPageToken :: Lens' ChangeLogsListResponse (Maybe Text)
cllrNextPageToken
  = lens _cllrNextPageToken
      (\ s a -> s{_cllrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#changeLogsListResponse\".
cllrKind :: Lens' ChangeLogsListResponse Text
cllrKind = lens _cllrKind (\ s a -> s{_cllrKind = a})

-- | Change log collection.
cllrChangeLogs :: Lens' ChangeLogsListResponse [Maybe ChangeLog]
cllrChangeLogs
  = lens _cllrChangeLogs
      (\ s a -> s{_cllrChangeLogs = a})
      . _Default
      . _Coerce

instance FromJSON ChangeLogsListResponse where
        parseJSON
          = withObject "ChangeLogsListResponse"
              (\ o ->
                 ChangeLogsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#changeLogsListResponse")
                     <*> (o .:? "changeLogs" .!= mempty))

instance ToJSON ChangeLogsListResponse where
        toJSON ChangeLogsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _cllrNextPageToken,
                  Just ("kind" .= _cllrKind),
                  ("changeLogs" .=) <$> _cllrChangeLogs])

-- | City List Response
--
-- /See:/ 'citiesListResponse' smart constructor.
data CitiesListResponse = CitiesListResponse
    { _citKind   :: !Text
    , _citCities :: !(Maybe [Maybe City])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'citKind'
--
-- * 'citCities'
citiesListResponse
    :: CitiesListResponse
citiesListResponse =
    CitiesListResponse
    { _citKind = "dfareporting#citiesListResponse"
    , _citCities = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#citiesListResponse\".
citKind :: Lens' CitiesListResponse Text
citKind = lens _citKind (\ s a -> s{_citKind = a})

-- | City collection.
citCities :: Lens' CitiesListResponse [Maybe City]
citCities
  = lens _citCities (\ s a -> s{_citCities = a}) .
      _Default
      . _Coerce

instance FromJSON CitiesListResponse where
        parseJSON
          = withObject "CitiesListResponse"
              (\ o ->
                 CitiesListResponse <$>
                   (o .:? "kind" .!= "dfareporting#citiesListResponse")
                     <*> (o .:? "cities" .!= mempty))

instance ToJSON CitiesListResponse where
        toJSON CitiesListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _citKind),
                  ("cities" .=) <$> _citCities])

-- | Contains information about a city that can be targeted by ads.
--
-- /See:/ 'city' smart constructor.
data City = City
    { _cMetroCode     :: !(Maybe Text)
    , _cRegionCode    :: !(Maybe Text)
    , _cKind          :: !Text
    , _cRegionDartId  :: !(Maybe Int64)
    , _cMetroDmaId    :: !(Maybe Int64)
    , _cName          :: !(Maybe Text)
    , _cCountryCode   :: !(Maybe Text)
    , _cCountryDartId :: !(Maybe Int64)
    , _cDartId        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'City' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMetroCode'
--
-- * 'cRegionCode'
--
-- * 'cKind'
--
-- * 'cRegionDartId'
--
-- * 'cMetroDmaId'
--
-- * 'cName'
--
-- * 'cCountryCode'
--
-- * 'cCountryDartId'
--
-- * 'cDartId'
city
    :: City
city =
    City
    { _cMetroCode = Nothing
    , _cRegionCode = Nothing
    , _cKind = "dfareporting#city"
    , _cRegionDartId = Nothing
    , _cMetroDmaId = Nothing
    , _cName = Nothing
    , _cCountryCode = Nothing
    , _cCountryDartId = Nothing
    , _cDartId = Nothing
    }

-- | Metro region code of the metro region (DMA) to which this city belongs.
cMetroCode :: Lens' City (Maybe Text)
cMetroCode
  = lens _cMetroCode (\ s a -> s{_cMetroCode = a})

-- | Region code of the region to which this city belongs.
cRegionCode :: Lens' City (Maybe Text)
cRegionCode
  = lens _cRegionCode (\ s a -> s{_cRegionCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#city\".
cKind :: Lens' City Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | DART ID of the region to which this city belongs.
cRegionDartId :: Lens' City (Maybe Int64)
cRegionDartId
  = lens _cRegionDartId
      (\ s a -> s{_cRegionDartId = a})

-- | ID of the metro region (DMA) to which this city belongs.
cMetroDmaId :: Lens' City (Maybe Int64)
cMetroDmaId
  = lens _cMetroDmaId (\ s a -> s{_cMetroDmaId = a})

-- | Name of this city.
cName :: Lens' City (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Country code of the country to which this city belongs.
cCountryCode :: Lens' City (Maybe Text)
cCountryCode
  = lens _cCountryCode (\ s a -> s{_cCountryCode = a})

-- | DART ID of the country to which this city belongs.
cCountryDartId :: Lens' City (Maybe Int64)
cCountryDartId
  = lens _cCountryDartId
      (\ s a -> s{_cCountryDartId = a})

-- | DART ID of this city. This is the ID used for targeting and generating
-- reports.
cDartId :: Lens' City (Maybe Int64)
cDartId = lens _cDartId (\ s a -> s{_cDartId = a})

instance FromJSON City where
        parseJSON
          = withObject "City"
              (\ o ->
                 City <$>
                   (o .:? "metroCode") <*> (o .:? "regionCode") <*>
                     (o .:? "kind" .!= "dfareporting#city")
                     <*> (o .:? "regionDartId")
                     <*> (o .:? "metroDmaId")
                     <*> (o .:? "name")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "countryDartId")
                     <*> (o .:? "dartId"))

instance ToJSON City where
        toJSON City{..}
          = object
              (catMaybes
                 [("metroCode" .=) <$> _cMetroCode,
                  ("regionCode" .=) <$> _cRegionCode,
                  Just ("kind" .= _cKind),
                  ("regionDartId" .=) <$> _cRegionDartId,
                  ("metroDmaId" .=) <$> _cMetroDmaId,
                  ("name" .=) <$> _cName,
                  ("countryCode" .=) <$> _cCountryCode,
                  ("countryDartId" .=) <$> _cCountryDartId,
                  ("dartId" .=) <$> _cDartId])

-- | Creative Click Tag.
--
-- /See:/ 'clickTag' smart constructor.
data ClickTag = ClickTag
    { _ctValue     :: !(Maybe Text)
    , _ctName      :: !(Maybe Text)
    , _ctEventName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClickTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctValue'
--
-- * 'ctName'
--
-- * 'ctEventName'
clickTag
    :: ClickTag
clickTag =
    ClickTag
    { _ctValue = Nothing
    , _ctName = Nothing
    , _ctEventName = Nothing
    }

-- | Parameter value for the specified click tag. This field contains a
-- click-through url.
ctValue :: Lens' ClickTag (Maybe Text)
ctValue = lens _ctValue (\ s a -> s{_ctValue = a})

-- | Parameter name for the specified click tag. For ENHANCED_IMAGE creative
-- assets, this field must match the value of the creative asset\'s
-- creativeAssetId.name field.
ctName :: Lens' ClickTag (Maybe Text)
ctName = lens _ctName (\ s a -> s{_ctName = a})

-- | Advertiser event name associated with the click tag. This field is used
-- by ENHANCED_BANNER, ENHANCED_IMAGE, and HTML5_BANNER creatives.
ctEventName :: Lens' ClickTag (Maybe Text)
ctEventName
  = lens _ctEventName (\ s a -> s{_ctEventName = a})

instance FromJSON ClickTag where
        parseJSON
          = withObject "ClickTag"
              (\ o ->
                 ClickTag <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "eventName"))

instance ToJSON ClickTag where
        toJSON ClickTag{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ctValue, ("name" .=) <$> _ctName,
                  ("eventName" .=) <$> _ctEventName])

-- | Click-through URL
--
-- /See:/ 'clickThroughUrl' smart constructor.
data ClickThroughUrl = ClickThroughUrl
    { _ctuDefaultLandingPage      :: !(Maybe Bool)
    , _ctuComputedClickThroughUrl :: !(Maybe Text)
    , _ctuCustomClickThroughUrl   :: !(Maybe Text)
    , _ctuLandingPageId           :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClickThroughUrl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctuDefaultLandingPage'
--
-- * 'ctuComputedClickThroughUrl'
--
-- * 'ctuCustomClickThroughUrl'
--
-- * 'ctuLandingPageId'
clickThroughUrl
    :: ClickThroughUrl
clickThroughUrl =
    ClickThroughUrl
    { _ctuDefaultLandingPage = Nothing
    , _ctuComputedClickThroughUrl = Nothing
    , _ctuCustomClickThroughUrl = Nothing
    , _ctuLandingPageId = Nothing
    }

-- | Whether the campaign default landing page is used.
ctuDefaultLandingPage :: Lens' ClickThroughUrl (Maybe Bool)
ctuDefaultLandingPage
  = lens _ctuDefaultLandingPage
      (\ s a -> s{_ctuDefaultLandingPage = a})

-- | Read-only convenience field representing the actual URL that will be
-- used for this click-through. The URL is computed as follows: - If
-- defaultLandingPage is enabled then the campaign\'s default landing page
-- URL is assigned to this field. - If defaultLandingPage is not enabled
-- and a landingPageId is specified then that landing page\'s URL is
-- assigned to this field. - If neither of the above cases apply, then the
-- customClickThroughUrl is assigned to this field.
ctuComputedClickThroughUrl :: Lens' ClickThroughUrl (Maybe Text)
ctuComputedClickThroughUrl
  = lens _ctuComputedClickThroughUrl
      (\ s a -> s{_ctuComputedClickThroughUrl = a})

-- | Custom click-through URL. Applicable if the defaultLandingPage field is
-- set to false and the landingPageId field is left unset.
ctuCustomClickThroughUrl :: Lens' ClickThroughUrl (Maybe Text)
ctuCustomClickThroughUrl
  = lens _ctuCustomClickThroughUrl
      (\ s a -> s{_ctuCustomClickThroughUrl = a})

-- | ID of the landing page for the click-through URL. Applicable if the
-- defaultLandingPage field is set to false.
ctuLandingPageId :: Lens' ClickThroughUrl (Maybe Int64)
ctuLandingPageId
  = lens _ctuLandingPageId
      (\ s a -> s{_ctuLandingPageId = a})

instance FromJSON ClickThroughUrl where
        parseJSON
          = withObject "ClickThroughUrl"
              (\ o ->
                 ClickThroughUrl <$>
                   (o .:? "defaultLandingPage") <*>
                     (o .:? "computedClickThroughUrl")
                     <*> (o .:? "customClickThroughUrl")
                     <*> (o .:? "landingPageId"))

instance ToJSON ClickThroughUrl where
        toJSON ClickThroughUrl{..}
          = object
              (catMaybes
                 [("defaultLandingPage" .=) <$>
                    _ctuDefaultLandingPage,
                  ("computedClickThroughUrl" .=) <$>
                    _ctuComputedClickThroughUrl,
                  ("customClickThroughUrl" .=) <$>
                    _ctuCustomClickThroughUrl,
                  ("landingPageId" .=) <$> _ctuLandingPageId])

-- | Click Through URL Suffix settings.
--
-- /See:/ 'clickThroughUrlSuffixProperties' smart constructor.
data ClickThroughUrlSuffixProperties = ClickThroughUrlSuffixProperties
    { _ctuspOverrideInheritedSuffix :: !(Maybe Bool)
    , _ctuspClickThroughUrlSuffix   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClickThroughUrlSuffixProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctuspOverrideInheritedSuffix'
--
-- * 'ctuspClickThroughUrlSuffix'
clickThroughUrlSuffixProperties
    :: ClickThroughUrlSuffixProperties
clickThroughUrlSuffixProperties =
    ClickThroughUrlSuffixProperties
    { _ctuspOverrideInheritedSuffix = Nothing
    , _ctuspClickThroughUrlSuffix = Nothing
    }

-- | Whether this entity should override the inherited click-through URL
-- suffix with its own defined value.
ctuspOverrideInheritedSuffix :: Lens' ClickThroughUrlSuffixProperties (Maybe Bool)
ctuspOverrideInheritedSuffix
  = lens _ctuspOverrideInheritedSuffix
      (\ s a -> s{_ctuspOverrideInheritedSuffix = a})

-- | Click-through URL suffix to apply to all ads in this entity\'s scope.
-- Must be less than 128 characters long.
ctuspClickThroughUrlSuffix :: Lens' ClickThroughUrlSuffixProperties (Maybe Text)
ctuspClickThroughUrlSuffix
  = lens _ctuspClickThroughUrlSuffix
      (\ s a -> s{_ctuspClickThroughUrlSuffix = a})

instance FromJSON ClickThroughUrlSuffixProperties
         where
        parseJSON
          = withObject "ClickThroughUrlSuffixProperties"
              (\ o ->
                 ClickThroughUrlSuffixProperties <$>
                   (o .:? "overrideInheritedSuffix") <*>
                     (o .:? "clickThroughUrlSuffix"))

instance ToJSON ClickThroughUrlSuffixProperties where
        toJSON ClickThroughUrlSuffixProperties{..}
          = object
              (catMaybes
                 [("overrideInheritedSuffix" .=) <$>
                    _ctuspOverrideInheritedSuffix,
                  ("clickThroughUrlSuffix" .=) <$>
                    _ctuspClickThroughUrlSuffix])

-- | Companion Click-through override.
--
-- /See:/ 'companionClickThroughOverride' smart constructor.
data CompanionClickThroughOverride = CompanionClickThroughOverride
    { _cctoCreativeId      :: !(Maybe Int64)
    , _cctoClickThroughUrl :: !(Maybe (Maybe ClickThroughUrl))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompanionClickThroughOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cctoCreativeId'
--
-- * 'cctoClickThroughUrl'
companionClickThroughOverride
    :: CompanionClickThroughOverride
companionClickThroughOverride =
    CompanionClickThroughOverride
    { _cctoCreativeId = Nothing
    , _cctoClickThroughUrl = Nothing
    }

-- | ID of the creative for this companion click-through override.
cctoCreativeId :: Lens' CompanionClickThroughOverride (Maybe Int64)
cctoCreativeId
  = lens _cctoCreativeId
      (\ s a -> s{_cctoCreativeId = a})

-- | Click-through URL of this companion click-through override.
cctoClickThroughUrl :: Lens' CompanionClickThroughOverride (Maybe (Maybe ClickThroughUrl))
cctoClickThroughUrl
  = lens _cctoClickThroughUrl
      (\ s a -> s{_cctoClickThroughUrl = a})

instance FromJSON CompanionClickThroughOverride where
        parseJSON
          = withObject "CompanionClickThroughOverride"
              (\ o ->
                 CompanionClickThroughOverride <$>
                   (o .:? "creativeId") <*> (o .:? "clickThroughUrl"))

instance ToJSON CompanionClickThroughOverride where
        toJSON CompanionClickThroughOverride{..}
          = object
              (catMaybes
                 [("creativeId" .=) <$> _cctoCreativeId,
                  ("clickThroughUrl" .=) <$> _cctoClickThroughUrl])

-- | Represents a response to the queryCompatibleFields method.
--
-- /See:/ 'compatibleFields' smart constructor.
data CompatibleFields = CompatibleFields
    { _cfReachReportCompatibleFields               :: !(Maybe (Maybe ReachReportCompatibleFields))
    , _cfCrossDimensionReachReportCompatibleFields :: !(Maybe (Maybe CrossDimensionReachReportCompatibleFields))
    , _cfKind                                      :: !Text
    , _cfFloodlightReportCompatibleFields          :: !(Maybe (Maybe FloodlightReportCompatibleFields))
    , _cfReportCompatibleFields                    :: !(Maybe (Maybe ReportCompatibleFields))
    , _cfPathToConversionReportCompatibleFields    :: !(Maybe (Maybe PathToConversionReportCompatibleFields))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompatibleFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfReachReportCompatibleFields'
--
-- * 'cfCrossDimensionReachReportCompatibleFields'
--
-- * 'cfKind'
--
-- * 'cfFloodlightReportCompatibleFields'
--
-- * 'cfReportCompatibleFields'
--
-- * 'cfPathToConversionReportCompatibleFields'
compatibleFields
    :: CompatibleFields
compatibleFields =
    CompatibleFields
    { _cfReachReportCompatibleFields = Nothing
    , _cfCrossDimensionReachReportCompatibleFields = Nothing
    , _cfKind = "dfareporting#compatibleFields"
    , _cfFloodlightReportCompatibleFields = Nothing
    , _cfReportCompatibleFields = Nothing
    , _cfPathToConversionReportCompatibleFields = Nothing
    }

-- | Contains items that are compatible to be selected for a report of type
-- \"REACH\".
cfReachReportCompatibleFields :: Lens' CompatibleFields (Maybe (Maybe ReachReportCompatibleFields))
cfReachReportCompatibleFields
  = lens _cfReachReportCompatibleFields
      (\ s a -> s{_cfReachReportCompatibleFields = a})

-- | Contains items that are compatible to be selected for a report of type
-- \"CROSS_DIMENSION_REACH\".
cfCrossDimensionReachReportCompatibleFields :: Lens' CompatibleFields (Maybe (Maybe CrossDimensionReachReportCompatibleFields))
cfCrossDimensionReachReportCompatibleFields
  = lens _cfCrossDimensionReachReportCompatibleFields
      (\ s a ->
         s{_cfCrossDimensionReachReportCompatibleFields = a})

-- | The kind of resource this is, in this case
-- dfareporting#compatibleFields.
cfKind :: Lens' CompatibleFields Text
cfKind = lens _cfKind (\ s a -> s{_cfKind = a})

-- | Contains items that are compatible to be selected for a report of type
-- \"FLOODLIGHT\".
cfFloodlightReportCompatibleFields :: Lens' CompatibleFields (Maybe (Maybe FloodlightReportCompatibleFields))
cfFloodlightReportCompatibleFields
  = lens _cfFloodlightReportCompatibleFields
      (\ s a -> s{_cfFloodlightReportCompatibleFields = a})

-- | Contains items that are compatible to be selected for a report of type
-- \"STANDARD\".
cfReportCompatibleFields :: Lens' CompatibleFields (Maybe (Maybe ReportCompatibleFields))
cfReportCompatibleFields
  = lens _cfReportCompatibleFields
      (\ s a -> s{_cfReportCompatibleFields = a})

-- | Contains items that are compatible to be selected for a report of type
-- \"PATH_TO_CONVERSION\".
cfPathToConversionReportCompatibleFields :: Lens' CompatibleFields (Maybe (Maybe PathToConversionReportCompatibleFields))
cfPathToConversionReportCompatibleFields
  = lens _cfPathToConversionReportCompatibleFields
      (\ s a ->
         s{_cfPathToConversionReportCompatibleFields = a})

instance FromJSON CompatibleFields where
        parseJSON
          = withObject "CompatibleFields"
              (\ o ->
                 CompatibleFields <$>
                   (o .:? "reachReportCompatibleFields") <*>
                     (o .:? "crossDimensionReachReportCompatibleFields")
                     <*>
                     (o .:? "kind" .!= "dfareporting#compatibleFields")
                     <*> (o .:? "floodlightReportCompatibleFields")
                     <*> (o .:? "reportCompatibleFields")
                     <*> (o .:? "pathToConversionReportCompatibleFields"))

instance ToJSON CompatibleFields where
        toJSON CompatibleFields{..}
          = object
              (catMaybes
                 [("reachReportCompatibleFields" .=) <$>
                    _cfReachReportCompatibleFields,
                  ("crossDimensionReachReportCompatibleFields" .=) <$>
                    _cfCrossDimensionReachReportCompatibleFields,
                  Just ("kind" .= _cfKind),
                  ("floodlightReportCompatibleFields" .=) <$>
                    _cfFloodlightReportCompatibleFields,
                  ("reportCompatibleFields" .=) <$>
                    _cfReportCompatibleFields,
                  ("pathToConversionReportCompatibleFields" .=) <$>
                    _cfPathToConversionReportCompatibleFields])

-- | Contains information about an internet connection type that can be
-- targeted by ads. Clients can use the connection type to target mobile
-- vs. broadband users.
--
-- /See:/ 'connectionType' smart constructor.
data ConnectionType = ConnectionType
    { _conKind :: !Text
    , _conName :: !(Maybe Text)
    , _conId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conKind'
--
-- * 'conName'
--
-- * 'conId'
connectionType
    :: ConnectionType
connectionType =
    ConnectionType
    { _conKind = "dfareporting#connectionType"
    , _conName = Nothing
    , _conId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#connectionType\".
conKind :: Lens' ConnectionType Text
conKind = lens _conKind (\ s a -> s{_conKind = a})

-- | Name of this connection type.
conName :: Lens' ConnectionType (Maybe Text)
conName = lens _conName (\ s a -> s{_conName = a})

-- | ID of this connection type.
conId :: Lens' ConnectionType (Maybe Int64)
conId = lens _conId (\ s a -> s{_conId = a})

instance FromJSON ConnectionType where
        parseJSON
          = withObject "ConnectionType"
              (\ o ->
                 ConnectionType <$>
                   (o .:? "kind" .!= "dfareporting#connectionType") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON ConnectionType where
        toJSON ConnectionType{..}
          = object
              (catMaybes
                 [Just ("kind" .= _conKind), ("name" .=) <$> _conName,
                  ("id" .=) <$> _conId])

-- | Connection Type List Response
--
-- /See:/ 'connectionTypesListResponse' smart constructor.
data ConnectionTypesListResponse = ConnectionTypesListResponse
    { _ctlrKind            :: !Text
    , _ctlrConnectionTypes :: !(Maybe [Maybe ConnectionType])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlrKind'
--
-- * 'ctlrConnectionTypes'
connectionTypesListResponse
    :: ConnectionTypesListResponse
connectionTypesListResponse =
    ConnectionTypesListResponse
    { _ctlrKind = "dfareporting#connectionTypesListResponse"
    , _ctlrConnectionTypes = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#connectionTypesListResponse\".
ctlrKind :: Lens' ConnectionTypesListResponse Text
ctlrKind = lens _ctlrKind (\ s a -> s{_ctlrKind = a})

-- | Collection of connection types such as broadband and mobile.
ctlrConnectionTypes :: Lens' ConnectionTypesListResponse [Maybe ConnectionType]
ctlrConnectionTypes
  = lens _ctlrConnectionTypes
      (\ s a -> s{_ctlrConnectionTypes = a})
      . _Default
      . _Coerce

instance FromJSON ConnectionTypesListResponse where
        parseJSON
          = withObject "ConnectionTypesListResponse"
              (\ o ->
                 ConnectionTypesListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#connectionTypesListResponse")
                     <*> (o .:? "connectionTypes" .!= mempty))

instance ToJSON ConnectionTypesListResponse where
        toJSON ConnectionTypesListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ctlrKind),
                  ("connectionTypes" .=) <$> _ctlrConnectionTypes])

-- | Content Category List Response
--
-- /See:/ 'contentCategoriesListResponse' smart constructor.
data ContentCategoriesListResponse = ContentCategoriesListResponse
    { _cclrNextPageToken     :: !(Maybe Text)
    , _cclrKind              :: !Text
    , _cclrContentCategories :: !(Maybe [Maybe ContentCategory])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclrNextPageToken'
--
-- * 'cclrKind'
--
-- * 'cclrContentCategories'
contentCategoriesListResponse
    :: ContentCategoriesListResponse
contentCategoriesListResponse =
    ContentCategoriesListResponse
    { _cclrNextPageToken = Nothing
    , _cclrKind = "dfareporting#contentCategoriesListResponse"
    , _cclrContentCategories = Nothing
    }

-- | Pagination token to be used for the next list operation.
cclrNextPageToken :: Lens' ContentCategoriesListResponse (Maybe Text)
cclrNextPageToken
  = lens _cclrNextPageToken
      (\ s a -> s{_cclrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#contentCategoriesListResponse\".
cclrKind :: Lens' ContentCategoriesListResponse Text
cclrKind = lens _cclrKind (\ s a -> s{_cclrKind = a})

-- | Content category collection.
cclrContentCategories :: Lens' ContentCategoriesListResponse [Maybe ContentCategory]
cclrContentCategories
  = lens _cclrContentCategories
      (\ s a -> s{_cclrContentCategories = a})
      . _Default
      . _Coerce

instance FromJSON ContentCategoriesListResponse where
        parseJSON
          = withObject "ContentCategoriesListResponse"
              (\ o ->
                 ContentCategoriesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#contentCategoriesListResponse")
                     <*> (o .:? "contentCategories" .!= mempty))

instance ToJSON ContentCategoriesListResponse where
        toJSON ContentCategoriesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _cclrNextPageToken,
                  Just ("kind" .= _cclrKind),
                  ("contentCategories" .=) <$> _cclrContentCategories])

-- | Organizes placements according to the contents of their associated
-- webpages.
--
-- /See:/ 'contentCategory' smart constructor.
data ContentCategory = ContentCategory
    { _cccKind      :: !Text
    , _cccAccountId :: !(Maybe Int64)
    , _cccName      :: !(Maybe Text)
    , _cccId        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccKind'
--
-- * 'cccAccountId'
--
-- * 'cccName'
--
-- * 'cccId'
contentCategory
    :: ContentCategory
contentCategory =
    ContentCategory
    { _cccKind = "dfareporting#contentCategory"
    , _cccAccountId = Nothing
    , _cccName = Nothing
    , _cccId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#contentCategory\".
cccKind :: Lens' ContentCategory Text
cccKind = lens _cccKind (\ s a -> s{_cccKind = a})

-- | Account ID of this content category. This is a read-only field that can
-- be left blank.
cccAccountId :: Lens' ContentCategory (Maybe Int64)
cccAccountId
  = lens _cccAccountId (\ s a -> s{_cccAccountId = a})

-- | Name of this content category. This is a required field and must be less
-- than 256 characters long and unique among content categories of the same
-- account.
cccName :: Lens' ContentCategory (Maybe Text)
cccName = lens _cccName (\ s a -> s{_cccName = a})

-- | ID of this content category. This is a read-only, auto-generated field.
cccId :: Lens' ContentCategory (Maybe Int64)
cccId = lens _cccId (\ s a -> s{_cccId = a})

instance FromJSON ContentCategory where
        parseJSON
          = withObject "ContentCategory"
              (\ o ->
                 ContentCategory <$>
                   (o .:? "kind" .!= "dfareporting#contentCategory") <*>
                     (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON ContentCategory where
        toJSON ContentCategory{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cccKind),
                  ("accountId" .=) <$> _cccAccountId,
                  ("name" .=) <$> _cccName, ("id" .=) <$> _cccId])

-- | Country List Response
--
-- /See:/ 'countriesListResponse' smart constructor.
data CountriesListResponse = CountriesListResponse
    { _clrKind      :: !Text
    , _clrCountries :: !(Maybe [Maybe Country])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountriesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrKind'
--
-- * 'clrCountries'
countriesListResponse
    :: CountriesListResponse
countriesListResponse =
    CountriesListResponse
    { _clrKind = "dfareporting#countriesListResponse"
    , _clrCountries = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#countriesListResponse\".
clrKind :: Lens' CountriesListResponse Text
clrKind = lens _clrKind (\ s a -> s{_clrKind = a})

-- | Country collection.
clrCountries :: Lens' CountriesListResponse [Maybe Country]
clrCountries
  = lens _clrCountries (\ s a -> s{_clrCountries = a})
      . _Default
      . _Coerce

instance FromJSON CountriesListResponse where
        parseJSON
          = withObject "CountriesListResponse"
              (\ o ->
                 CountriesListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#countriesListResponse")
                     <*> (o .:? "countries" .!= mempty))

instance ToJSON CountriesListResponse where
        toJSON CountriesListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _clrKind),
                  ("countries" .=) <$> _clrCountries])

-- | Contains information about a country that can be targeted by ads.
--
-- /See:/ 'country' smart constructor.
data Country = Country
    { _couKind        :: !Text
    , _couName        :: !(Maybe Text)
    , _couCountryCode :: !(Maybe Text)
    , _couDartId      :: !(Maybe Int64)
    , _couSslEnabled  :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Country' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couKind'
--
-- * 'couName'
--
-- * 'couCountryCode'
--
-- * 'couDartId'
--
-- * 'couSslEnabled'
country
    :: Country
country =
    Country
    { _couKind = "dfareporting#country"
    , _couName = Nothing
    , _couCountryCode = Nothing
    , _couDartId = Nothing
    , _couSslEnabled = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#country\".
couKind :: Lens' Country Text
couKind = lens _couKind (\ s a -> s{_couKind = a})

-- | Name of this country.
couName :: Lens' Country (Maybe Text)
couName = lens _couName (\ s a -> s{_couName = a})

-- | Country code.
couCountryCode :: Lens' Country (Maybe Text)
couCountryCode
  = lens _couCountryCode
      (\ s a -> s{_couCountryCode = a})

-- | DART ID of this country. This is the ID used for targeting and
-- generating reports.
couDartId :: Lens' Country (Maybe Int64)
couDartId
  = lens _couDartId (\ s a -> s{_couDartId = a})

-- | Whether ad serving supports secure servers in this country.
couSslEnabled :: Lens' Country (Maybe Bool)
couSslEnabled
  = lens _couSslEnabled
      (\ s a -> s{_couSslEnabled = a})

instance FromJSON Country where
        parseJSON
          = withObject "Country"
              (\ o ->
                 Country <$>
                   (o .:? "kind" .!= "dfareporting#country") <*>
                     (o .:? "name")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "dartId")
                     <*> (o .:? "sslEnabled"))

instance ToJSON Country where
        toJSON Country{..}
          = object
              (catMaybes
                 [Just ("kind" .= _couKind), ("name" .=) <$> _couName,
                  ("countryCode" .=) <$> _couCountryCode,
                  ("dartId" .=) <$> _couDartId,
                  ("sslEnabled" .=) <$> _couSslEnabled])

-- | Contains properties of a Creative.
--
-- /See:/ 'creative' smart constructor.
data Creative = Creative
    { _ccConvertFlashToHtml5                 :: !(Maybe Bool)
    , _ccBackupImageTargetWindow             :: !(Maybe (Maybe TargetWindow))
    , _ccRenderingIdDimensionValue           :: !(Maybe (Maybe DimensionValue))
    , _ccCustomKeyValues                     :: !(Maybe [Text])
    , _ccVideoDuration                       :: !(Maybe Float)
    , _ccRenderingId                         :: !(Maybe Int64)
    , _ccThirdPartyBackupImageImpressionsUrl :: !(Maybe Text)
    , _ccFsCommand                           :: !(Maybe (Maybe FsCommand))
    , _ccAllowScriptAccess                   :: !(Maybe Bool)
    , _ccHtmlCodeLocked                      :: !(Maybe Bool)
    , _ccRequiredFlashPluginVersion          :: !(Maybe Text)
    , _ccAuthoringTool                       :: !(Maybe CreativeAuthoringTool)
    , _ccSize                                :: !(Maybe (Maybe Size))
    , _ccThirdPartyUrls                      :: !(Maybe [Maybe ThirdPartyTrackingUrl])
    , _ccCounterCustomEvents                 :: !(Maybe [Maybe CreativeCustomEvent])
    , _ccKind                                :: !Text
    , _ccSslOverride                         :: !(Maybe Bool)
    , _ccHtmlCode                            :: !(Maybe Text)
    , _ccAdvertiserId                        :: !(Maybe Int64)
    , _ccRequiredFlashVersion                :: !(Maybe Int32)
    , _ccBackgroundColor                     :: !(Maybe Text)
    , _ccAdTagKeys                           :: !(Maybe [Text])
    , _ccSkippable                           :: !(Maybe Bool)
    , _ccSslCompliant                        :: !(Maybe Bool)
    , _ccIdDimensionValue                    :: !(Maybe (Maybe DimensionValue))
    , _ccBackupImageReportingLabel           :: !(Maybe Text)
    , _ccCommercialId                        :: !(Maybe Text)
    , _ccActive                              :: !(Maybe Bool)
    , _ccExitCustomEvents                    :: !(Maybe [Maybe CreativeCustomEvent])
    , _ccAccountId                           :: !(Maybe Int64)
    , _ccBackupImageClickThroughUrl          :: !(Maybe Text)
    , _ccName                                :: !(Maybe Text)
    , _ccOverrideCss                         :: !(Maybe Text)
    , _ccVideoDescription                    :: !(Maybe Text)
    , _ccClickTags                           :: !(Maybe [Maybe ClickTag])
    , _ccAdParameters                        :: !(Maybe Text)
    , _ccVersion                             :: !(Maybe Int32)
    , _ccLatestTraffickedCreativeId          :: !(Maybe Int64)
    , _ccThirdPartyRichMediaImpressionsUrl   :: !(Maybe Text)
    , _ccLastModifiedInfo                    :: !(Maybe (Maybe LastModifiedInfo))
    , _ccId                                  :: !(Maybe Int64)
    , _ccStudioAdvertiserId                  :: !(Maybe Int64)
    , _ccCreativeAssets                      :: !(Maybe [Maybe CreativeAsset])
    , _ccSubaccountId                        :: !(Maybe Int64)
    , _ccType                                :: !(Maybe CreativeType)
    , _ccTimerCustomEvents                   :: !(Maybe [Maybe CreativeCustomEvent])
    , _ccStudioCreativeId                    :: !(Maybe Int64)
    , _ccCompatibility                       :: !(Maybe [CreativeItemCompatibility])
    , _ccBackupImageFeatures                 :: !(Maybe [CreativeItemBackupImageFeatures])
    , _ccArtworkType                         :: !(Maybe CreativeArtworkType)
    , _ccArchived                            :: !(Maybe Bool)
    , _ccCompanionCreatives                  :: !(Maybe [Int64])
    , _ccTotalFileSize                       :: !(Maybe Int64)
    , _ccStudioTraffickedCreativeId          :: !(Maybe Int64)
    , _ccRedirectUrl                         :: !(Maybe Text)
    , _ccAutoAdvanceImages                   :: !(Maybe Bool)
    , _ccCreativeFieldAssignments            :: !(Maybe [Maybe CreativeFieldAssignment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccConvertFlashToHtml5'
--
-- * 'ccBackupImageTargetWindow'
--
-- * 'ccRenderingIdDimensionValue'
--
-- * 'ccCustomKeyValues'
--
-- * 'ccVideoDuration'
--
-- * 'ccRenderingId'
--
-- * 'ccThirdPartyBackupImageImpressionsUrl'
--
-- * 'ccFsCommand'
--
-- * 'ccAllowScriptAccess'
--
-- * 'ccHtmlCodeLocked'
--
-- * 'ccRequiredFlashPluginVersion'
--
-- * 'ccAuthoringTool'
--
-- * 'ccSize'
--
-- * 'ccThirdPartyUrls'
--
-- * 'ccCounterCustomEvents'
--
-- * 'ccKind'
--
-- * 'ccSslOverride'
--
-- * 'ccHtmlCode'
--
-- * 'ccAdvertiserId'
--
-- * 'ccRequiredFlashVersion'
--
-- * 'ccBackgroundColor'
--
-- * 'ccAdTagKeys'
--
-- * 'ccSkippable'
--
-- * 'ccSslCompliant'
--
-- * 'ccIdDimensionValue'
--
-- * 'ccBackupImageReportingLabel'
--
-- * 'ccCommercialId'
--
-- * 'ccActive'
--
-- * 'ccExitCustomEvents'
--
-- * 'ccAccountId'
--
-- * 'ccBackupImageClickThroughUrl'
--
-- * 'ccName'
--
-- * 'ccOverrideCss'
--
-- * 'ccVideoDescription'
--
-- * 'ccClickTags'
--
-- * 'ccAdParameters'
--
-- * 'ccVersion'
--
-- * 'ccLatestTraffickedCreativeId'
--
-- * 'ccThirdPartyRichMediaImpressionsUrl'
--
-- * 'ccLastModifiedInfo'
--
-- * 'ccId'
--
-- * 'ccStudioAdvertiserId'
--
-- * 'ccCreativeAssets'
--
-- * 'ccSubaccountId'
--
-- * 'ccType'
--
-- * 'ccTimerCustomEvents'
--
-- * 'ccStudioCreativeId'
--
-- * 'ccCompatibility'
--
-- * 'ccBackupImageFeatures'
--
-- * 'ccArtworkType'
--
-- * 'ccArchived'
--
-- * 'ccCompanionCreatives'
--
-- * 'ccTotalFileSize'
--
-- * 'ccStudioTraffickedCreativeId'
--
-- * 'ccRedirectUrl'
--
-- * 'ccAutoAdvanceImages'
--
-- * 'ccCreativeFieldAssignments'
creative
    :: Creative
creative =
    Creative
    { _ccConvertFlashToHtml5 = Nothing
    , _ccBackupImageTargetWindow = Nothing
    , _ccRenderingIdDimensionValue = Nothing
    , _ccCustomKeyValues = Nothing
    , _ccVideoDuration = Nothing
    , _ccRenderingId = Nothing
    , _ccThirdPartyBackupImageImpressionsUrl = Nothing
    , _ccFsCommand = Nothing
    , _ccAllowScriptAccess = Nothing
    , _ccHtmlCodeLocked = Nothing
    , _ccRequiredFlashPluginVersion = Nothing
    , _ccAuthoringTool = Nothing
    , _ccSize = Nothing
    , _ccThirdPartyUrls = Nothing
    , _ccCounterCustomEvents = Nothing
    , _ccKind = "dfareporting#creative"
    , _ccSslOverride = Nothing
    , _ccHtmlCode = Nothing
    , _ccAdvertiserId = Nothing
    , _ccRequiredFlashVersion = Nothing
    , _ccBackgroundColor = Nothing
    , _ccAdTagKeys = Nothing
    , _ccSkippable = Nothing
    , _ccSslCompliant = Nothing
    , _ccIdDimensionValue = Nothing
    , _ccBackupImageReportingLabel = Nothing
    , _ccCommercialId = Nothing
    , _ccActive = Nothing
    , _ccExitCustomEvents = Nothing
    , _ccAccountId = Nothing
    , _ccBackupImageClickThroughUrl = Nothing
    , _ccName = Nothing
    , _ccOverrideCss = Nothing
    , _ccVideoDescription = Nothing
    , _ccClickTags = Nothing
    , _ccAdParameters = Nothing
    , _ccVersion = Nothing
    , _ccLatestTraffickedCreativeId = Nothing
    , _ccThirdPartyRichMediaImpressionsUrl = Nothing
    , _ccLastModifiedInfo = Nothing
    , _ccId = Nothing
    , _ccStudioAdvertiserId = Nothing
    , _ccCreativeAssets = Nothing
    , _ccSubaccountId = Nothing
    , _ccType = Nothing
    , _ccTimerCustomEvents = Nothing
    , _ccStudioCreativeId = Nothing
    , _ccCompatibility = Nothing
    , _ccBackupImageFeatures = Nothing
    , _ccArtworkType = Nothing
    , _ccArchived = Nothing
    , _ccCompanionCreatives = Nothing
    , _ccTotalFileSize = Nothing
    , _ccStudioTraffickedCreativeId = Nothing
    , _ccRedirectUrl = Nothing
    , _ccAutoAdvanceImages = Nothing
    , _ccCreativeFieldAssignments = Nothing
    }

-- | Whether Flash assets associated with the creative need to be
-- automatically converted to HTML5. This flag is enabled by default and
-- users can choose to disable it if they don\'t want the system to
-- generate and use HTML5 asset for this creative. Applicable to the
-- following creative types: ENHANCED_BANNER and FLASH_INPAGE.
ccConvertFlashToHtml5 :: Lens' Creative (Maybe Bool)
ccConvertFlashToHtml5
  = lens _ccConvertFlashToHtml5
      (\ s a -> s{_ccConvertFlashToHtml5 = a})

-- | Target window for backup image. Applicable to the following creative
-- types: ENHANCED_BANNER, FLASH_INPAGE, and HTML5_BANNER.
ccBackupImageTargetWindow :: Lens' Creative (Maybe (Maybe TargetWindow))
ccBackupImageTargetWindow
  = lens _ccBackupImageTargetWindow
      (\ s a -> s{_ccBackupImageTargetWindow = a})

-- | Dimension value for the rendering ID of this creative. This is a
-- read-only field. Applicable to all creative types.
ccRenderingIdDimensionValue :: Lens' Creative (Maybe (Maybe DimensionValue))
ccRenderingIdDimensionValue
  = lens _ccRenderingIdDimensionValue
      (\ s a -> s{_ccRenderingIdDimensionValue = a})

-- | Custom key-values for a Rich Media creative. Key-values let you
-- customize the creative settings of a Rich Media ad running on your site
-- without having to contact the advertiser. You can use key-values to
-- dynamically change the look or functionality of a creative. Applicable
-- to the following creative types: all RICH_MEDIA, and all VPAID.
ccCustomKeyValues :: Lens' Creative [Text]
ccCustomKeyValues
  = lens _ccCustomKeyValues
      (\ s a -> s{_ccCustomKeyValues = a})
      . _Default
      . _Coerce

-- | Creative video duration in seconds. This is a read-only field.
-- Applicable to the following creative types: INSTREAM_VIDEO, all
-- RICH_MEDIA, and all VPAID.
ccVideoDuration :: Lens' Creative (Maybe Float)
ccVideoDuration
  = lens _ccVideoDuration
      (\ s a -> s{_ccVideoDuration = a})

-- | ID of current rendering version. This is a read-only field. Applicable
-- to all creative types.
ccRenderingId :: Lens' Creative (Maybe Int64)
ccRenderingId
  = lens _ccRenderingId
      (\ s a -> s{_ccRenderingId = a})

-- | Third-party URL used to record backup image impressions. Applicable to
-- the following creative types: all RICH_MEDIA
ccThirdPartyBackupImageImpressionsUrl :: Lens' Creative (Maybe Text)
ccThirdPartyBackupImageImpressionsUrl
  = lens _ccThirdPartyBackupImageImpressionsUrl
      (\ s a ->
         s{_ccThirdPartyBackupImageImpressionsUrl = a})

-- | OpenWindow FSCommand of this creative. This lets the SWF file
-- communicate with either Flash Player or the program hosting Flash
-- Player, such as a web browser. This is only triggered if
-- allowScriptAccess field is true. Applicable to the following creative
-- types: FLASH_INPAGE.
ccFsCommand :: Lens' Creative (Maybe (Maybe FsCommand))
ccFsCommand
  = lens _ccFsCommand (\ s a -> s{_ccFsCommand = a})

-- | Whether script access is allowed for this creative. This is a read-only
-- and deprecated field which will automatically be set to true on update.
-- Applicable to the following creative types: FLASH_INPAGE.
ccAllowScriptAccess :: Lens' Creative (Maybe Bool)
ccAllowScriptAccess
  = lens _ccAllowScriptAccess
      (\ s a -> s{_ccAllowScriptAccess = a})

-- | Whether HTML code is DCM-generated or manually entered. Set to true to
-- ignore changes to htmlCode. Applicable to the following creative types:
-- FLASH_INPAGE and HTML5_BANNER.
ccHtmlCodeLocked :: Lens' Creative (Maybe Bool)
ccHtmlCodeLocked
  = lens _ccHtmlCodeLocked
      (\ s a -> s{_ccHtmlCodeLocked = a})

-- | The minimum required Flash plugin version for this creative. For
-- example, 11.2.202.235. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA, and all VPAID.
ccRequiredFlashPluginVersion :: Lens' Creative (Maybe Text)
ccRequiredFlashPluginVersion
  = lens _ccRequiredFlashPluginVersion
      (\ s a -> s{_ccRequiredFlashPluginVersion = a})

-- | Authoring tool for HTML5 banner creatives. This is a read-only field.
-- Applicable to the following creative types: HTML5_BANNER.
ccAuthoringTool :: Lens' Creative (Maybe CreativeAuthoringTool)
ccAuthoringTool
  = lens _ccAuthoringTool
      (\ s a -> s{_ccAuthoringTool = a})

-- | Size associated with this creative. When inserting or updating a
-- creative either the size ID field or size width and height fields can be
-- used. This is a required field when applicable; however for IMAGE and
-- FLASH_INPAGE creatives, if left blank, this field will be automatically
-- set using the actual size of the associated image assets. Applicable to
-- the following creative types: ENHANCED_BANNER, ENHANCED_IMAGE,
-- FLASH_INPAGE, HTML5_BANNER, IMAGE, and all RICH_MEDIA.
ccSize :: Lens' Creative (Maybe (Maybe Size))
ccSize = lens _ccSize (\ s a -> s{_ccSize = a})

-- | Third-party URLs for tracking in-stream video creative events.
-- Applicable to the following creative types: INSTREAM_VIDEO and all
-- VPAID.
ccThirdPartyUrls :: Lens' Creative [Maybe ThirdPartyTrackingUrl]
ccThirdPartyUrls
  = lens _ccThirdPartyUrls
      (\ s a -> s{_ccThirdPartyUrls = a})
      . _Default
      . _Coerce

-- | List of counter events configured for the creative. Applicable to the
-- following creative types: all RICH_MEDIA, and all VPAID.
ccCounterCustomEvents :: Lens' Creative [Maybe CreativeCustomEvent]
ccCounterCustomEvents
  = lens _ccCounterCustomEvents
      (\ s a -> s{_ccCounterCustomEvents = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creative\".
ccKind :: Lens' Creative Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | Whether creative should be treated as SSL compliant even if the system
-- scan shows it\'s not.
ccSslOverride :: Lens' Creative (Maybe Bool)
ccSslOverride
  = lens _ccSslOverride
      (\ s a -> s{_ccSslOverride = a})

-- | HTML code for the creative. This is a required field when applicable.
-- This field is ignored if htmlCodeLocked is false. Applicable to the
-- following creative types: all CUSTOM, FLASH_INPAGE, and HTML5_BANNER,
-- and all RICH_MEDIA.
ccHtmlCode :: Lens' Creative (Maybe Text)
ccHtmlCode
  = lens _ccHtmlCode (\ s a -> s{_ccHtmlCode = a})

-- | Advertiser ID of this creative. This is a required field. Applicable to
-- all creative types.
ccAdvertiserId :: Lens' Creative (Maybe Int64)
ccAdvertiserId
  = lens _ccAdvertiserId
      (\ s a -> s{_ccAdvertiserId = a})

-- | The internal Flash version for this creative as calculated by
-- DoubleClick Studio. This is a read-only field. Applicable to the
-- following creative types: FLASH_INPAGE, ENHANCED_BANNER, all RICH_MEDIA,
-- and all VPAID.
ccRequiredFlashVersion :: Lens' Creative (Maybe Int32)
ccRequiredFlashVersion
  = lens _ccRequiredFlashVersion
      (\ s a -> s{_ccRequiredFlashVersion = a})

-- | The 6-character HTML color code, beginning with #, for the background of
-- the window area where the Flash file is displayed. Default is white.
-- Applicable to the following creative types: FLASH_INPAGE.
ccBackgroundColor :: Lens' Creative (Maybe Text)
ccBackgroundColor
  = lens _ccBackgroundColor
      (\ s a -> s{_ccBackgroundColor = a})

-- | Keywords for a Rich Media creative. Keywords let you customize the
-- creative settings of a Rich Media ad running on your site without having
-- to contact the advertiser. You can use keywords to dynamically change
-- the look or functionality of a creative. Applicable to the following
-- creative types: all RICH_MEDIA, and all VPAID.
ccAdTagKeys :: Lens' Creative [Text]
ccAdTagKeys
  = lens _ccAdTagKeys (\ s a -> s{_ccAdTagKeys = a}) .
      _Default
      . _Coerce

-- | Whether the user can choose to skip the creative. Applicable to the
-- following creative types: INSTREAM_VIDEO.
ccSkippable :: Lens' Creative (Maybe Bool)
ccSkippable
  = lens _ccSkippable (\ s a -> s{_ccSkippable = a})

-- | Whether the creative is SSL-compliant. This is a read-only field.
-- Applicable to all creative types.
ccSslCompliant :: Lens' Creative (Maybe Bool)
ccSslCompliant
  = lens _ccSslCompliant
      (\ s a -> s{_ccSslCompliant = a})

-- | Dimension value for the ID of this creative. This is a read-only field.
-- Applicable to all creative types.
ccIdDimensionValue :: Lens' Creative (Maybe (Maybe DimensionValue))
ccIdDimensionValue
  = lens _ccIdDimensionValue
      (\ s a -> s{_ccIdDimensionValue = a})

-- | Reporting label used for HTML5 banner backup image. Applicable to the
-- following creative types: ENHANCED_BANNER.
ccBackupImageReportingLabel :: Lens' Creative (Maybe Text)
ccBackupImageReportingLabel
  = lens _ccBackupImageReportingLabel
      (\ s a -> s{_ccBackupImageReportingLabel = a})

-- | Industry standard ID assigned to creative for reach and frequency.
-- Applicable to the following creative types: INSTREAM_VIDEO and all
-- VPAID.
ccCommercialId :: Lens' Creative (Maybe Text)
ccCommercialId
  = lens _ccCommercialId
      (\ s a -> s{_ccCommercialId = a})

-- | Whether the creative is active. Applicable to all creative types.
ccActive :: Lens' Creative (Maybe Bool)
ccActive = lens _ccActive (\ s a -> s{_ccActive = a})

-- | List of exit events configured for the creative. Applicable to the
-- following creative types: all RICH_MEDIA, and all VPAID.
ccExitCustomEvents :: Lens' Creative [Maybe CreativeCustomEvent]
ccExitCustomEvents
  = lens _ccExitCustomEvents
      (\ s a -> s{_ccExitCustomEvents = a})
      . _Default
      . _Coerce

-- | Account ID of this creative. This field, if left unset, will be
-- auto-generated for both insert and update operations. Applicable to all
-- creative types.
ccAccountId :: Lens' Creative (Maybe Int64)
ccAccountId
  = lens _ccAccountId (\ s a -> s{_ccAccountId = a})

-- | Click-through URL for backup image. Applicable to the following creative
-- types: ENHANCED_BANNER, FLASH_INPAGE, and HTML5_BANNER.
ccBackupImageClickThroughUrl :: Lens' Creative (Maybe Text)
ccBackupImageClickThroughUrl
  = lens _ccBackupImageClickThroughUrl
      (\ s a -> s{_ccBackupImageClickThroughUrl = a})

-- | Name of the creative. This is a required field and must be less than 256
-- characters long. Applicable to all creative types.
ccName :: Lens' Creative (Maybe Text)
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | Override CSS value for rich media creatives. Applicable to the following
-- creative types: all RICH_MEDIA.
ccOverrideCss :: Lens' Creative (Maybe Text)
ccOverrideCss
  = lens _ccOverrideCss
      (\ s a -> s{_ccOverrideCss = a})

-- | Description of the video ad. Applicable to the following creative types:
-- INSTREAM_VIDEO and all VPAID.
ccVideoDescription :: Lens' Creative (Maybe Text)
ccVideoDescription
  = lens _ccVideoDescription
      (\ s a -> s{_ccVideoDescription = a})

-- | Click tags of the creative. For ENHANCED_BANNER, FLASH_INPAGE, and
-- HTML5_BANNER creatives, this is a subset of detected click tags for the
-- assets associated with this creative. After creating a flash asset,
-- detected click tags will be returned in the creativeAssetMetadata. When
-- inserting the creative, populate the creative clickTags field using the
-- creativeAssetMetadata.clickTags field. For ENHANCED_IMAGE creatives,
-- there should be exactly one entry in this list for each image creative
-- asset. A click tag is matched with a corresponding creative asset by
-- matching the clickTag.name field with the
-- creativeAsset.assetIdentifier.name field. Applicable to the following
-- creative types: ENHANCED_BANNER, ENHANCED_IMAGE, FLASH_INPAGE,
-- HTML5_BANNER.
ccClickTags :: Lens' Creative [Maybe ClickTag]
ccClickTags
  = lens _ccClickTags (\ s a -> s{_ccClickTags = a}) .
      _Default
      . _Coerce

-- | Ad parameters user for VPAID creative. This is a read-only field.
-- Applicable to the following creative types: all VPAID.
ccAdParameters :: Lens' Creative (Maybe Text)
ccAdParameters
  = lens _ccAdParameters
      (\ s a -> s{_ccAdParameters = a})

-- | The version number helps you keep track of multiple versions of your
-- creative in your reports. The version number will always be
-- auto-generated during insert operations to start at 1. For tracking
-- creatives the version cannot be incremented and will always remain at 1.
-- For all other creative types the version can be incremented only by 1
-- during update operations. In addition, the version will be automatically
-- incremented by 1 when undergoing Rich Media creative merging. Applicable
-- to all creative types.
ccVersion :: Lens' Creative (Maybe Int32)
ccVersion
  = lens _ccVersion (\ s a -> s{_ccVersion = a})

-- | Latest Studio trafficked creative ID associated with rich media and
-- VPAID creatives. This is a read-only field. Applicable to the following
-- creative types: all RICH_MEDIA, and all VPAID.
ccLatestTraffickedCreativeId :: Lens' Creative (Maybe Int64)
ccLatestTraffickedCreativeId
  = lens _ccLatestTraffickedCreativeId
      (\ s a -> s{_ccLatestTraffickedCreativeId = a})

-- | Third-party URL used to record rich media impressions. Applicable to the
-- following creative types: all RICH_MEDIA
ccThirdPartyRichMediaImpressionsUrl :: Lens' Creative (Maybe Text)
ccThirdPartyRichMediaImpressionsUrl
  = lens _ccThirdPartyRichMediaImpressionsUrl
      (\ s a ->
         s{_ccThirdPartyRichMediaImpressionsUrl = a})

-- | Creative last modification information. This is a read-only field.
-- Applicable to all creative types.
ccLastModifiedInfo :: Lens' Creative (Maybe (Maybe LastModifiedInfo))
ccLastModifiedInfo
  = lens _ccLastModifiedInfo
      (\ s a -> s{_ccLastModifiedInfo = a})

-- | ID of this creative. This is a read-only, auto-generated field.
-- Applicable to all creative types.
ccId :: Lens' Creative (Maybe Int64)
ccId = lens _ccId (\ s a -> s{_ccId = a})

-- | Studio advertiser ID associated with rich media and VPAID creatives.
-- This is a read-only field. Applicable to the following creative types:
-- all RICH_MEDIA, and all VPAID.
ccStudioAdvertiserId :: Lens' Creative (Maybe Int64)
ccStudioAdvertiserId
  = lens _ccStudioAdvertiserId
      (\ s a -> s{_ccStudioAdvertiserId = a})

-- | Assets associated with a creative. Applicable to all but the following
-- creative types: INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and
-- REDIRECT
ccCreativeAssets :: Lens' Creative [Maybe CreativeAsset]
ccCreativeAssets
  = lens _ccCreativeAssets
      (\ s a -> s{_ccCreativeAssets = a})
      . _Default
      . _Coerce

-- | Subaccount ID of this creative. This field, if left unset, will be
-- auto-generated for both insert and update operations. Applicable to all
-- creative types.
ccSubaccountId :: Lens' Creative (Maybe Int64)
ccSubaccountId
  = lens _ccSubaccountId
      (\ s a -> s{_ccSubaccountId = a})

-- | Type of this creative.This is a required field. Applicable to all
-- creative types.
ccType :: Lens' Creative (Maybe CreativeType)
ccType = lens _ccType (\ s a -> s{_ccType = a})

-- | List of timer events configured for the creative. Applicable to the
-- following creative types: all RICH_MEDIA, and all VPAID.
ccTimerCustomEvents :: Lens' Creative [Maybe CreativeCustomEvent]
ccTimerCustomEvents
  = lens _ccTimerCustomEvents
      (\ s a -> s{_ccTimerCustomEvents = a})
      . _Default
      . _Coerce

-- | Studio creative ID associated with rich media and VPAID creatives. This
-- is a read-only field. Applicable to the following creative types: all
-- RICH_MEDIA, and all VPAID.
ccStudioCreativeId :: Lens' Creative (Maybe Int64)
ccStudioCreativeId
  = lens _ccStudioCreativeId
      (\ s a -> s{_ccStudioCreativeId = a})

-- | Compatibilities associated with this creative. This is a read-only
-- field. WEB and WEB_INTERSTITIAL refer to rendering either on desktop or
-- on mobile devices for regular or interstitial ads, respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO
-- refers to rendering in in-stream video ads developed with the VAST
-- standard. Applicable to all creative types. Acceptable values are: -
-- \"APP\" - \"APP_INTERSTITIAL\" - \"IN_STREAM_VIDEO\" - \"WEB\" -
-- \"WEB_INTERSTITIAL\"
ccCompatibility :: Lens' Creative [CreativeItemCompatibility]
ccCompatibility
  = lens _ccCompatibility
      (\ s a -> s{_ccCompatibility = a})
      . _Default
      . _Coerce

-- | List of feature dependencies that will cause a backup image to be served
-- if the browser that serves the ad does not support them. Feature
-- dependencies are features that a browser must be able to support in
-- order to render your HTML5 creative asset correctly. This field is
-- initially auto-generated to contain all features detected by DCM for all
-- the assets of this creative and can then be modified by the client. To
-- reset this field, copy over all the creativeAssets\' detected features.
-- Applicable to the following creative types: ENHANCED_BANNER and
-- HTML5_BANNER.
ccBackupImageFeatures :: Lens' Creative [CreativeItemBackupImageFeatures]
ccBackupImageFeatures
  = lens _ccBackupImageFeatures
      (\ s a -> s{_ccBackupImageFeatures = a})
      . _Default
      . _Coerce

-- | Type of artwork used for the creative. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA, and all
-- VPAID.
ccArtworkType :: Lens' Creative (Maybe CreativeArtworkType)
ccArtworkType
  = lens _ccArtworkType
      (\ s a -> s{_ccArtworkType = a})

-- | Whether the creative is archived. Applicable to all creative types.
ccArchived :: Lens' Creative (Maybe Bool)
ccArchived
  = lens _ccArchived (\ s a -> s{_ccArchived = a})

-- | List of companion creatives assigned to an in-Stream videocreative.
-- Acceptable values include IDs of existing flash and image creatives.
-- Applicable to the following creative types: INSTREAM_VIDEO and all
-- VPAID.
ccCompanionCreatives :: Lens' Creative [Int64]
ccCompanionCreatives
  = lens _ccCompanionCreatives
      (\ s a -> s{_ccCompanionCreatives = a})
      . _Default
      . _Coerce

-- | Combined size of all creative assets. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA, and all
-- VPAID.
ccTotalFileSize :: Lens' Creative (Maybe Int64)
ccTotalFileSize
  = lens _ccTotalFileSize
      (\ s a -> s{_ccTotalFileSize = a})

-- | Studio trafficked creative ID associated with rich media and VPAID
-- creatives. This is a read-only field. Applicable to the following
-- creative types: all RICH_MEDIA, and all VPAID.
ccStudioTraffickedCreativeId :: Lens' Creative (Maybe Int64)
ccStudioTraffickedCreativeId
  = lens _ccStudioTraffickedCreativeId
      (\ s a -> s{_ccStudioTraffickedCreativeId = a})

-- | URL of hosted image or another ad tag. This is a required field when
-- applicable. Applicable to the following creative types:
-- INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and REDIRECT
ccRedirectUrl :: Lens' Creative (Maybe Text)
ccRedirectUrl
  = lens _ccRedirectUrl
      (\ s a -> s{_ccRedirectUrl = a})

-- | Whether images are automatically advanced for enhanced image creatives.
-- Applicable to the following creative types: ENHANCED_IMAGE.
ccAutoAdvanceImages :: Lens' Creative (Maybe Bool)
ccAutoAdvanceImages
  = lens _ccAutoAdvanceImages
      (\ s a -> s{_ccAutoAdvanceImages = a})

-- | Creative field assignments for this creative. Applicable to all creative
-- types.
ccCreativeFieldAssignments :: Lens' Creative [Maybe CreativeFieldAssignment]
ccCreativeFieldAssignments
  = lens _ccCreativeFieldAssignments
      (\ s a -> s{_ccCreativeFieldAssignments = a})
      . _Default
      . _Coerce

instance FromJSON Creative where
        parseJSON
          = withObject "Creative"
              (\ o ->
                 Creative <$>
                   (o .:? "convertFlashToHtml5") <*>
                     (o .:? "backupImageTargetWindow")
                     <*> (o .:? "renderingIdDimensionValue")
                     <*> (o .:? "customKeyValues" .!= mempty)
                     <*> (o .:? "videoDuration")
                     <*> (o .:? "renderingId")
                     <*> (o .:? "thirdPartyBackupImageImpressionsUrl")
                     <*> (o .:? "fsCommand")
                     <*> (o .:? "allowScriptAccess")
                     <*> (o .:? "htmlCodeLocked")
                     <*> (o .:? "requiredFlashPluginVersion")
                     <*> (o .:? "authoringTool")
                     <*> (o .:? "size")
                     <*> (o .:? "thirdPartyUrls" .!= mempty)
                     <*> (o .:? "counterCustomEvents" .!= mempty)
                     <*> (o .:? "kind" .!= "dfareporting#creative")
                     <*> (o .:? "sslOverride")
                     <*> (o .:? "htmlCode")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "requiredFlashVersion")
                     <*> (o .:? "backgroundColor")
                     <*> (o .:? "adTagKeys" .!= mempty)
                     <*> (o .:? "skippable")
                     <*> (o .:? "sslCompliant")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "backupImageReportingLabel")
                     <*> (o .:? "commercialId")
                     <*> (o .:? "active")
                     <*> (o .:? "exitCustomEvents" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "backupImageClickThroughUrl")
                     <*> (o .:? "name")
                     <*> (o .:? "overrideCss")
                     <*> (o .:? "videoDescription")
                     <*> (o .:? "clickTags" .!= mempty)
                     <*> (o .:? "adParameters")
                     <*> (o .:? "version")
                     <*> (o .:? "latestTraffickedCreativeId")
                     <*> (o .:? "thirdPartyRichMediaImpressionsUrl")
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "studioAdvertiserId")
                     <*> (o .:? "creativeAssets" .!= mempty)
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "type")
                     <*> (o .:? "timerCustomEvents" .!= mempty)
                     <*> (o .:? "studioCreativeId")
                     <*> (o .:? "compatibility" .!= mempty)
                     <*> (o .:? "backupImageFeatures" .!= mempty)
                     <*> (o .:? "artworkType")
                     <*> (o .:? "archived")
                     <*> (o .:? "companionCreatives" .!= mempty)
                     <*> (o .:? "totalFileSize")
                     <*> (o .:? "studioTraffickedCreativeId")
                     <*> (o .:? "redirectUrl")
                     <*> (o .:? "auto_advance_images")
                     <*> (o .:? "creativeFieldAssignments" .!= mempty))

instance ToJSON Creative where
        toJSON Creative{..}
          = object
              (catMaybes
                 [("convertFlashToHtml5" .=) <$>
                    _ccConvertFlashToHtml5,
                  ("backupImageTargetWindow" .=) <$>
                    _ccBackupImageTargetWindow,
                  ("renderingIdDimensionValue" .=) <$>
                    _ccRenderingIdDimensionValue,
                  ("customKeyValues" .=) <$> _ccCustomKeyValues,
                  ("videoDuration" .=) <$> _ccVideoDuration,
                  ("renderingId" .=) <$> _ccRenderingId,
                  ("thirdPartyBackupImageImpressionsUrl" .=) <$>
                    _ccThirdPartyBackupImageImpressionsUrl,
                  ("fsCommand" .=) <$> _ccFsCommand,
                  ("allowScriptAccess" .=) <$> _ccAllowScriptAccess,
                  ("htmlCodeLocked" .=) <$> _ccHtmlCodeLocked,
                  ("requiredFlashPluginVersion" .=) <$>
                    _ccRequiredFlashPluginVersion,
                  ("authoringTool" .=) <$> _ccAuthoringTool,
                  ("size" .=) <$> _ccSize,
                  ("thirdPartyUrls" .=) <$> _ccThirdPartyUrls,
                  ("counterCustomEvents" .=) <$>
                    _ccCounterCustomEvents,
                  Just ("kind" .= _ccKind),
                  ("sslOverride" .=) <$> _ccSslOverride,
                  ("htmlCode" .=) <$> _ccHtmlCode,
                  ("advertiserId" .=) <$> _ccAdvertiserId,
                  ("requiredFlashVersion" .=) <$>
                    _ccRequiredFlashVersion,
                  ("backgroundColor" .=) <$> _ccBackgroundColor,
                  ("adTagKeys" .=) <$> _ccAdTagKeys,
                  ("skippable" .=) <$> _ccSkippable,
                  ("sslCompliant" .=) <$> _ccSslCompliant,
                  ("idDimensionValue" .=) <$> _ccIdDimensionValue,
                  ("backupImageReportingLabel" .=) <$>
                    _ccBackupImageReportingLabel,
                  ("commercialId" .=) <$> _ccCommercialId,
                  ("active" .=) <$> _ccActive,
                  ("exitCustomEvents" .=) <$> _ccExitCustomEvents,
                  ("accountId" .=) <$> _ccAccountId,
                  ("backupImageClickThroughUrl" .=) <$>
                    _ccBackupImageClickThroughUrl,
                  ("name" .=) <$> _ccName,
                  ("overrideCss" .=) <$> _ccOverrideCss,
                  ("videoDescription" .=) <$> _ccVideoDescription,
                  ("clickTags" .=) <$> _ccClickTags,
                  ("adParameters" .=) <$> _ccAdParameters,
                  ("version" .=) <$> _ccVersion,
                  ("latestTraffickedCreativeId" .=) <$>
                    _ccLatestTraffickedCreativeId,
                  ("thirdPartyRichMediaImpressionsUrl" .=) <$>
                    _ccThirdPartyRichMediaImpressionsUrl,
                  ("lastModifiedInfo" .=) <$> _ccLastModifiedInfo,
                  ("id" .=) <$> _ccId,
                  ("studioAdvertiserId" .=) <$> _ccStudioAdvertiserId,
                  ("creativeAssets" .=) <$> _ccCreativeAssets,
                  ("subaccountId" .=) <$> _ccSubaccountId,
                  ("type" .=) <$> _ccType,
                  ("timerCustomEvents" .=) <$> _ccTimerCustomEvents,
                  ("studioCreativeId" .=) <$> _ccStudioCreativeId,
                  ("compatibility" .=) <$> _ccCompatibility,
                  ("backupImageFeatures" .=) <$>
                    _ccBackupImageFeatures,
                  ("artworkType" .=) <$> _ccArtworkType,
                  ("archived" .=) <$> _ccArchived,
                  ("companionCreatives" .=) <$> _ccCompanionCreatives,
                  ("totalFileSize" .=) <$> _ccTotalFileSize,
                  ("studioTraffickedCreativeId" .=) <$>
                    _ccStudioTraffickedCreativeId,
                  ("redirectUrl" .=) <$> _ccRedirectUrl,
                  ("auto_advance_images" .=) <$> _ccAutoAdvanceImages,
                  ("creativeFieldAssignments" .=) <$>
                    _ccCreativeFieldAssignments])

-- | Creative Asset.
--
-- /See:/ 'creativeAsset' smart constructor.
data CreativeAsset = CreativeAsset
    { _cZIndex                :: !(Maybe Int32)
    , _cPushdown              :: !(Maybe Bool)
    , _cVideoDuration         :: !(Maybe Float)
    , _cOriginalBackup        :: !(Maybe Bool)
    , _cWindowMode            :: !(Maybe CreativeAssetWindowMode)
    , _cFlashVersion          :: !(Maybe Int32)
    , _cPushdownDuration      :: !(Maybe Float)
    , _cSize                  :: !(Maybe (Maybe Size))
    , _cVerticallyLocked      :: !(Maybe Bool)
    , _cOffset                :: !(Maybe (Maybe OffsetPosition))
    , _cStreamingServingUrl   :: !(Maybe Text)
    , _cZipFilesize           :: !(Maybe Text)
    , _cTransparency          :: !(Maybe Bool)
    , _cHideSelectionBoxes    :: !(Maybe Bool)
    , _cSslCompliant          :: !(Maybe Bool)
    , _cFileSize              :: !(Maybe Int64)
    , _cAssetIdentifier       :: !(Maybe (Maybe CreativeAssetId))
    , _cDurationType          :: !(Maybe CreativeAssetDurationType)
    , _cProgressiveServingUrl :: !(Maybe Text)
    , _cActive                :: !(Maybe Bool)
    , _cRole                  :: !(Maybe CreativeAssetRole)
    , _cMimeType              :: !(Maybe Text)
    , _cPositionTopUnit       :: !(Maybe CreativeAssetPositionTopUnit)
    , _cPositionLeftUnit      :: !(Maybe CreativeAssetPositionLeftUnit)
    , _cAlignment             :: !(Maybe CreativeAssetAlignment)
    , _cExpandedDimension     :: !(Maybe (Maybe Size))
    , _cZipFilename           :: !(Maybe Text)
    , _cActionScript3         :: !(Maybe Bool)
    , _cDisplayType           :: !(Maybe CreativeAssetDisplayType)
    , _cChildAssetType        :: !(Maybe CreativeAssetChildAssetType)
    , _cCollapsedSize         :: !(Maybe (Maybe Size))
    , _cId                    :: !(Maybe Int64)
    , _cBitRate               :: !(Maybe Int32)
    , _cCustomStartTimeValue  :: !(Maybe Int32)
    , _cStartTimeType         :: !(Maybe CreativeAssetStartTimeType)
    , _cDuration              :: !(Maybe Int32)
    , _cArtworkType           :: !(Maybe CreativeAssetArtworkType)
    , _cHideFlashObjects      :: !(Maybe Bool)
    , _cDetectedFeatures      :: !(Maybe [CreativeAssetItemDetectedFeatures])
    , _cBackupImageExit       :: !(Maybe (Maybe CreativeCustomEvent))
    , _cPosition              :: !(Maybe (Maybe OffsetPosition))
    , _cHorizontallyLocked    :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cZIndex'
--
-- * 'cPushdown'
--
-- * 'cVideoDuration'
--
-- * 'cOriginalBackup'
--
-- * 'cWindowMode'
--
-- * 'cFlashVersion'
--
-- * 'cPushdownDuration'
--
-- * 'cSize'
--
-- * 'cVerticallyLocked'
--
-- * 'cOffset'
--
-- * 'cStreamingServingUrl'
--
-- * 'cZipFilesize'
--
-- * 'cTransparency'
--
-- * 'cHideSelectionBoxes'
--
-- * 'cSslCompliant'
--
-- * 'cFileSize'
--
-- * 'cAssetIdentifier'
--
-- * 'cDurationType'
--
-- * 'cProgressiveServingUrl'
--
-- * 'cActive'
--
-- * 'cRole'
--
-- * 'cMimeType'
--
-- * 'cPositionTopUnit'
--
-- * 'cPositionLeftUnit'
--
-- * 'cAlignment'
--
-- * 'cExpandedDimension'
--
-- * 'cZipFilename'
--
-- * 'cActionScript3'
--
-- * 'cDisplayType'
--
-- * 'cChildAssetType'
--
-- * 'cCollapsedSize'
--
-- * 'cId'
--
-- * 'cBitRate'
--
-- * 'cCustomStartTimeValue'
--
-- * 'cStartTimeType'
--
-- * 'cDuration'
--
-- * 'cArtworkType'
--
-- * 'cHideFlashObjects'
--
-- * 'cDetectedFeatures'
--
-- * 'cBackupImageExit'
--
-- * 'cPosition'
--
-- * 'cHorizontallyLocked'
creativeAsset
    :: CreativeAsset
creativeAsset =
    CreativeAsset
    { _cZIndex = Nothing
    , _cPushdown = Nothing
    , _cVideoDuration = Nothing
    , _cOriginalBackup = Nothing
    , _cWindowMode = Nothing
    , _cFlashVersion = Nothing
    , _cPushdownDuration = Nothing
    , _cSize = Nothing
    , _cVerticallyLocked = Nothing
    , _cOffset = Nothing
    , _cStreamingServingUrl = Nothing
    , _cZipFilesize = Nothing
    , _cTransparency = Nothing
    , _cHideSelectionBoxes = Nothing
    , _cSslCompliant = Nothing
    , _cFileSize = Nothing
    , _cAssetIdentifier = Nothing
    , _cDurationType = Nothing
    , _cProgressiveServingUrl = Nothing
    , _cActive = Nothing
    , _cRole = Nothing
    , _cMimeType = Nothing
    , _cPositionTopUnit = Nothing
    , _cPositionLeftUnit = Nothing
    , _cAlignment = Nothing
    , _cExpandedDimension = Nothing
    , _cZipFilename = Nothing
    , _cActionScript3 = Nothing
    , _cDisplayType = Nothing
    , _cChildAssetType = Nothing
    , _cCollapsedSize = Nothing
    , _cId = Nothing
    , _cBitRate = Nothing
    , _cCustomStartTimeValue = Nothing
    , _cStartTimeType = Nothing
    , _cDuration = Nothing
    , _cArtworkType = Nothing
    , _cHideFlashObjects = Nothing
    , _cDetectedFeatures = Nothing
    , _cBackupImageExit = Nothing
    , _cPosition = Nothing
    , _cHorizontallyLocked = Nothing
    }

-- | zIndex value of an asset. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA.Additionally, only applicable
-- to assets whose displayType is NOT one of the following types:
-- ASSET_DISPLAY_TYPE_INPAGE or ASSET_DISPLAY_TYPE_OVERLAY.
cZIndex :: Lens' CreativeAsset (Maybe Int32)
cZIndex = lens _cZIndex (\ s a -> s{_cZIndex = a})

-- | Whether the asset pushes down other content. Applicable to the following
-- creative types: all RICH_MEDIA. Additionally, only applicable when the
-- asset offsets are 0, the collapsedSize.width matches size.width, and the
-- collapsedSize.height is less than size.height.
cPushdown :: Lens' CreativeAsset (Maybe Bool)
cPushdown
  = lens _cPushdown (\ s a -> s{_cPushdown = a})

-- | Detected video duration for video asset. This is a read-only field.
-- Applicable to the following creative types: INSTREAM_VIDEO and all
-- VPAID.
cVideoDuration :: Lens' CreativeAsset (Maybe Float)
cVideoDuration
  = lens _cVideoDuration
      (\ s a -> s{_cVideoDuration = a})

-- | Whether the backup asset is original or changed by the user in DCM.
-- Applicable to the following creative types: all RICH_MEDIA.
cOriginalBackup :: Lens' CreativeAsset (Maybe Bool)
cOriginalBackup
  = lens _cOriginalBackup
      (\ s a -> s{_cOriginalBackup = a})

-- | Window mode options for flash assets. Applicable to the following
-- creative types: FLASH_INPAGE, RICH_MEDIA_EXPANDING,
-- RICH_MEDIA_IM_EXPAND, RICH_MEDIA_INPAGE, and RICH_MEDIA_INPAGE_FLOATING.
cWindowMode :: Lens' CreativeAsset (Maybe CreativeAssetWindowMode)
cWindowMode
  = lens _cWindowMode (\ s a -> s{_cWindowMode = a})

-- | Flash version of the asset. This is a read-only field. Applicable to the
-- following creative types: FLASH_INPAGE, ENHANCED_BANNER, all RICH_MEDIA,
-- and all VPAID.
cFlashVersion :: Lens' CreativeAsset (Maybe Int32)
cFlashVersion
  = lens _cFlashVersion
      (\ s a -> s{_cFlashVersion = a})

-- | Pushdown duration in seconds for an asset. Must be between 0 and 9.99.
-- Applicable to the following creative types: all RICH_MEDIA.Additionally,
-- only applicable when the asset pushdown field is true, the offsets are
-- 0, the collapsedSize.width matches size.width, and the
-- collapsedSize.height is less than size.height.
cPushdownDuration :: Lens' CreativeAsset (Maybe Float)
cPushdownDuration
  = lens _cPushdownDuration
      (\ s a -> s{_cPushdownDuration = a})

-- | Size associated with this creative asset. This is a required field when
-- applicable; however for IMAGE and FLASH_INPAGE creatives, if left blank,
-- this field will be automatically set using the actual size of the
-- associated image asset. Applicable to the following creative types:
-- ENHANCED_BANNER, ENHANCED_IMAGE, FLASH_INPAGE, HTML5_BANNER, IMAGE, and
-- all RICH_MEDIA.
cSize :: Lens' CreativeAsset (Maybe (Maybe Size))
cSize = lens _cSize (\ s a -> s{_cSize = a})

-- | Whether the asset is vertically locked. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA.
cVerticallyLocked :: Lens' CreativeAsset (Maybe Bool)
cVerticallyLocked
  = lens _cVerticallyLocked
      (\ s a -> s{_cVerticallyLocked = a})

-- | Offset position for an asset in collapsed mode. This is a read-only
-- field. Applicable to the following creative types: all RICH_MEDIA and
-- all VPAID. Additionally, only applicable to assets whose displayType is
-- ASSET_DISPLAY_TYPE_EXPANDING or ASSET_DISPLAY_TYPE_PEEL_DOWN.
cOffset :: Lens' CreativeAsset (Maybe (Maybe OffsetPosition))
cOffset = lens _cOffset (\ s a -> s{_cOffset = a})

-- | Streaming URL for video asset. This is a read-only field. Applicable to
-- the following creative types: INSTREAM_VIDEO and all VPAID.
cStreamingServingUrl :: Lens' CreativeAsset (Maybe Text)
cStreamingServingUrl
  = lens _cStreamingServingUrl
      (\ s a -> s{_cStreamingServingUrl = a})

-- | Size of zip file. This is a read-only field. Applicable to the following
-- creative types: HTML5_BANNER.
cZipFilesize :: Lens' CreativeAsset (Maybe Text)
cZipFilesize
  = lens _cZipFilesize (\ s a -> s{_cZipFilesize = a})

-- | Whether the asset is transparent. Applicable to the following creative
-- types: all RICH_MEDIA. Additionally, only applicable to HTML5 assets.
cTransparency :: Lens' CreativeAsset (Maybe Bool)
cTransparency
  = lens _cTransparency
      (\ s a -> s{_cTransparency = a})

-- | Whether to hide selection boxes flag for an asset. Applicable to the
-- following creative types: all RICH_MEDIA.
cHideSelectionBoxes :: Lens' CreativeAsset (Maybe Bool)
cHideSelectionBoxes
  = lens _cHideSelectionBoxes
      (\ s a -> s{_cHideSelectionBoxes = a})

-- | Whether the asset is SSL-compliant. This is a read-only field.
-- Applicable to all but the following creative types: all REDIRECT and
-- TRACKING_TEXT.
cSslCompliant :: Lens' CreativeAsset (Maybe Bool)
cSslCompliant
  = lens _cSslCompliant
      (\ s a -> s{_cSslCompliant = a})

-- | File size associated with this creative asset. This is a read-only
-- field. Applicable to all but the following creative types: all REDIRECT
-- and TRACKING_TEXT.
cFileSize :: Lens' CreativeAsset (Maybe Int64)
cFileSize
  = lens _cFileSize (\ s a -> s{_cFileSize = a})

-- | Identifier of this asset. This is the same identifier returned during
-- creative asset insert operation. This is a required field. Applicable to
-- all but the following creative types: all REDIRECT and TRACKING_TEXT.
cAssetIdentifier :: Lens' CreativeAsset (Maybe (Maybe CreativeAssetId))
cAssetIdentifier
  = lens _cAssetIdentifier
      (\ s a -> s{_cAssetIdentifier = a})

-- | Duration type for which an asset will be displayed. Applicable to the
-- following creative types: all RICH_MEDIA.
cDurationType :: Lens' CreativeAsset (Maybe CreativeAssetDurationType)
cDurationType
  = lens _cDurationType
      (\ s a -> s{_cDurationType = a})

-- | Progressive URL for video asset. This is a read-only field. Applicable
-- to the following creative types: INSTREAM_VIDEO and all VPAID.
cProgressiveServingUrl :: Lens' CreativeAsset (Maybe Text)
cProgressiveServingUrl
  = lens _cProgressiveServingUrl
      (\ s a -> s{_cProgressiveServingUrl = a})

-- | Whether the video asset is active. This is a read-only field for
-- VPAID_NON_LINEAR assets. Applicable to the following creative types:
-- INSTREAM_VIDEO and all VPAID.
cActive :: Lens' CreativeAsset (Maybe Bool)
cActive = lens _cActive (\ s a -> s{_cActive = a})

-- | Role of the asset in relation to creative. Applicable to all but the
-- following creative types: all REDIRECT and TRACKING_TEXT. This is a
-- required field. PRIMARY applies to ENHANCED_BANNER, FLASH_INPAGE,
-- HTML5_BANNER, IMAGE, IMAGE_GALLERY, all RICH_MEDIA (which may contain
-- multiple primary assets), and all VPAID creatives. BACKUP_IMAGE applies
-- to ENHANCED_BANNER, FLASH_INPAGE, HTML5_BANNER, all RICH_MEDIA, and all
-- VPAID creatives. ADDITIONAL_IMAGE and ADDITIONAL_FLASH apply to
-- FLASH_INPAGE creatives. OTHER refers to assets from sources other than
-- DCM, such as Studio uploaded assets, applicable to all RICH_MEDIA and
-- all VPAID creatives. PARENT_VIDEO refers to videos uploaded by the user
-- in DCM and is applicable to INSTREAM_VIDEO and VPAID_LINEAR creatives.
-- TRANSCODED_VIDEO refers to videos transcoded by DCM from PARENT_VIDEO
-- assets and is applicable to INSTREAM_VIDEO and VPAID_LINEAR creatives.
-- ALTERNATE_VIDEO refers to the DCM representation of child asset videos
-- from Studio, and is applicable to VPAID_LINEAR creatives. These cannot
-- be added or removed within DCM. For VPAID_LINEAR creatives,
-- PARENT_VIDEO, TRANSCODED_VIDEO and ALTERNATE_VIDEO assets that are
-- marked active serve as backup in case the VPAID creative cannot be
-- served. Only PARENT_VIDEO assets can be added or removed for an
-- INSTREAM_VIDEO or VPAID_LINEAR creative.
cRole :: Lens' CreativeAsset (Maybe CreativeAssetRole)
cRole = lens _cRole (\ s a -> s{_cRole = a})

-- | Detected MIME type for video asset. This is a read-only field.
-- Applicable to the following creative types: INSTREAM_VIDEO and all
-- VPAID.
cMimeType :: Lens' CreativeAsset (Maybe Text)
cMimeType
  = lens _cMimeType (\ s a -> s{_cMimeType = a})

-- | Offset top unit for an asset. This is a read-only field if the asset
-- displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following
-- creative types: all RICH_MEDIA.
cPositionTopUnit :: Lens' CreativeAsset (Maybe CreativeAssetPositionTopUnit)
cPositionTopUnit
  = lens _cPositionTopUnit
      (\ s a -> s{_cPositionTopUnit = a})

-- | Offset left unit for an asset. This is a read-only field. Applicable to
-- the following creative types: all RICH_MEDIA.
cPositionLeftUnit :: Lens' CreativeAsset (Maybe CreativeAssetPositionLeftUnit)
cPositionLeftUnit
  = lens _cPositionLeftUnit
      (\ s a -> s{_cPositionLeftUnit = a})

-- | Possible alignments for an asset. This is a read-only field. Applicable
-- to the following creative types: RICH_MEDIA_MULTI_FLOATING.
cAlignment :: Lens' CreativeAsset (Maybe CreativeAssetAlignment)
cAlignment
  = lens _cAlignment (\ s a -> s{_cAlignment = a})

-- | Detected expanded dimension for video asset. This is a read-only field.
-- Applicable to the following creative types: INSTREAM_VIDEO and all
-- VPAID.
cExpandedDimension :: Lens' CreativeAsset (Maybe (Maybe Size))
cExpandedDimension
  = lens _cExpandedDimension
      (\ s a -> s{_cExpandedDimension = a})

-- | File name of zip file. This is a read-only field. Applicable to the
-- following creative types: HTML5_BANNER.
cZipFilename :: Lens' CreativeAsset (Maybe Text)
cZipFilename
  = lens _cZipFilename (\ s a -> s{_cZipFilename = a})

-- | Whether ActionScript3 is enabled for the flash asset. This is a
-- read-only field. Applicable to the following creative types:
-- FLASH_INPAGE and ENHANCED_BANNER.
cActionScript3 :: Lens' CreativeAsset (Maybe Bool)
cActionScript3
  = lens _cActionScript3
      (\ s a -> s{_cActionScript3 = a})

-- | Type of rich media asset. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA.
cDisplayType :: Lens' CreativeAsset (Maybe CreativeAssetDisplayType)
cDisplayType
  = lens _cDisplayType (\ s a -> s{_cDisplayType = a})

-- | Rich media child asset type. This is a read-only field. Applicable to
-- the following creative types: all VPAID.
cChildAssetType :: Lens' CreativeAsset (Maybe CreativeAssetChildAssetType)
cChildAssetType
  = lens _cChildAssetType
      (\ s a -> s{_cChildAssetType = a})

-- | Size of an asset when collapsed. This is a read-only field. Applicable
-- to the following creative types: all RICH_MEDIA and all VPAID.
-- Additionally, applicable to assets whose displayType is
-- ASSET_DISPLAY_TYPE_EXPANDING or ASSET_DISPLAY_TYPE_PEEL_DOWN.
cCollapsedSize :: Lens' CreativeAsset (Maybe (Maybe Size))
cCollapsedSize
  = lens _cCollapsedSize
      (\ s a -> s{_cCollapsedSize = a})

-- | Numeric ID of this creative asset. This is a required field and should
-- not be modified. Applicable to all but the following creative types: all
-- REDIRECT and TRACKING_TEXT.
cId :: Lens' CreativeAsset (Maybe Int64)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Detected bit-rate for video asset. This is a read-only field. Applicable
-- to the following creative types: INSTREAM_VIDEO and all VPAID.
cBitRate :: Lens' CreativeAsset (Maybe Int32)
cBitRate = lens _cBitRate (\ s a -> s{_cBitRate = a})

-- | Custom start time in seconds for making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
cCustomStartTimeValue :: Lens' CreativeAsset (Maybe Int32)
cCustomStartTimeValue
  = lens _cCustomStartTimeValue
      (\ s a -> s{_cCustomStartTimeValue = a})

-- | Initial wait time type before making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
cStartTimeType :: Lens' CreativeAsset (Maybe CreativeAssetStartTimeType)
cStartTimeType
  = lens _cStartTimeType
      (\ s a -> s{_cStartTimeType = a})

-- | Duration in seconds for which an asset will be displayed. Applicable to
-- the following creative types: INSTREAM_VIDEO and VPAID_LINEAR.
cDuration :: Lens' CreativeAsset (Maybe Int32)
cDuration
  = lens _cDuration (\ s a -> s{_cDuration = a})

-- | Artwork type of rich media creative. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA.
cArtworkType :: Lens' CreativeAsset (Maybe CreativeAssetArtworkType)
cArtworkType
  = lens _cArtworkType (\ s a -> s{_cArtworkType = a})

-- | Whether to hide Flash objects flag for an asset. Applicable to the
-- following creative types: all RICH_MEDIA.
cHideFlashObjects :: Lens' CreativeAsset (Maybe Bool)
cHideFlashObjects
  = lens _cHideFlashObjects
      (\ s a -> s{_cHideFlashObjects = a})

-- | List of feature dependencies for the creative asset that are detected by
-- DCM. Feature dependencies are features that a browser must be able to
-- support in order to render your HTML5 creative correctly. This is a
-- read-only, auto-generated field. Applicable to the following creative
-- types: ENHANCED_BANNER and HTML5_BANNER.
cDetectedFeatures :: Lens' CreativeAsset [CreativeAssetItemDetectedFeatures]
cDetectedFeatures
  = lens _cDetectedFeatures
      (\ s a -> s{_cDetectedFeatures = a})
      . _Default
      . _Coerce

-- | Exit event configured for the backup image. Applicable to the following
-- creative types: all RICH_MEDIA.
cBackupImageExit :: Lens' CreativeAsset (Maybe (Maybe CreativeCustomEvent))
cBackupImageExit
  = lens _cBackupImageExit
      (\ s a -> s{_cBackupImageExit = a})

-- | Offset position for an asset. Applicable to the following creative
-- types: all RICH_MEDIA.
cPosition :: Lens' CreativeAsset (Maybe (Maybe OffsetPosition))
cPosition
  = lens _cPosition (\ s a -> s{_cPosition = a})

-- | Whether the asset is horizontally locked. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA.
cHorizontallyLocked :: Lens' CreativeAsset (Maybe Bool)
cHorizontallyLocked
  = lens _cHorizontallyLocked
      (\ s a -> s{_cHorizontallyLocked = a})

instance FromJSON CreativeAsset where
        parseJSON
          = withObject "CreativeAsset"
              (\ o ->
                 CreativeAsset <$>
                   (o .:? "zIndex") <*> (o .:? "pushdown") <*>
                     (o .:? "videoDuration")
                     <*> (o .:? "originalBackup")
                     <*> (o .:? "windowMode")
                     <*> (o .:? "flashVersion")
                     <*> (o .:? "pushdownDuration")
                     <*> (o .:? "size")
                     <*> (o .:? "verticallyLocked")
                     <*> (o .:? "offset")
                     <*> (o .:? "streamingServingUrl")
                     <*> (o .:? "zipFilesize")
                     <*> (o .:? "transparency")
                     <*> (o .:? "hideSelectionBoxes")
                     <*> (o .:? "sslCompliant")
                     <*> (o .:? "fileSize")
                     <*> (o .:? "assetIdentifier")
                     <*> (o .:? "durationType")
                     <*> (o .:? "progressiveServingUrl")
                     <*> (o .:? "active")
                     <*> (o .:? "role")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "positionTopUnit")
                     <*> (o .:? "positionLeftUnit")
                     <*> (o .:? "alignment")
                     <*> (o .:? "expandedDimension")
                     <*> (o .:? "zipFilename")
                     <*> (o .:? "actionScript3")
                     <*> (o .:? "displayType")
                     <*> (o .:? "childAssetType")
                     <*> (o .:? "collapsedSize")
                     <*> (o .:? "id")
                     <*> (o .:? "bitRate")
                     <*> (o .:? "customStartTimeValue")
                     <*> (o .:? "startTimeType")
                     <*> (o .:? "duration")
                     <*> (o .:? "artworkType")
                     <*> (o .:? "hideFlashObjects")
                     <*> (o .:? "detectedFeatures" .!= mempty)
                     <*> (o .:? "backupImageExit")
                     <*> (o .:? "position")
                     <*> (o .:? "horizontallyLocked"))

instance ToJSON CreativeAsset where
        toJSON CreativeAsset{..}
          = object
              (catMaybes
                 [("zIndex" .=) <$> _cZIndex,
                  ("pushdown" .=) <$> _cPushdown,
                  ("videoDuration" .=) <$> _cVideoDuration,
                  ("originalBackup" .=) <$> _cOriginalBackup,
                  ("windowMode" .=) <$> _cWindowMode,
                  ("flashVersion" .=) <$> _cFlashVersion,
                  ("pushdownDuration" .=) <$> _cPushdownDuration,
                  ("size" .=) <$> _cSize,
                  ("verticallyLocked" .=) <$> _cVerticallyLocked,
                  ("offset" .=) <$> _cOffset,
                  ("streamingServingUrl" .=) <$> _cStreamingServingUrl,
                  ("zipFilesize" .=) <$> _cZipFilesize,
                  ("transparency" .=) <$> _cTransparency,
                  ("hideSelectionBoxes" .=) <$> _cHideSelectionBoxes,
                  ("sslCompliant" .=) <$> _cSslCompliant,
                  ("fileSize" .=) <$> _cFileSize,
                  ("assetIdentifier" .=) <$> _cAssetIdentifier,
                  ("durationType" .=) <$> _cDurationType,
                  ("progressiveServingUrl" .=) <$>
                    _cProgressiveServingUrl,
                  ("active" .=) <$> _cActive, ("role" .=) <$> _cRole,
                  ("mimeType" .=) <$> _cMimeType,
                  ("positionTopUnit" .=) <$> _cPositionTopUnit,
                  ("positionLeftUnit" .=) <$> _cPositionLeftUnit,
                  ("alignment" .=) <$> _cAlignment,
                  ("expandedDimension" .=) <$> _cExpandedDimension,
                  ("zipFilename" .=) <$> _cZipFilename,
                  ("actionScript3" .=) <$> _cActionScript3,
                  ("displayType" .=) <$> _cDisplayType,
                  ("childAssetType" .=) <$> _cChildAssetType,
                  ("collapsedSize" .=) <$> _cCollapsedSize,
                  ("id" .=) <$> _cId, ("bitRate" .=) <$> _cBitRate,
                  ("customStartTimeValue" .=) <$>
                    _cCustomStartTimeValue,
                  ("startTimeType" .=) <$> _cStartTimeType,
                  ("duration" .=) <$> _cDuration,
                  ("artworkType" .=) <$> _cArtworkType,
                  ("hideFlashObjects" .=) <$> _cHideFlashObjects,
                  ("detectedFeatures" .=) <$> _cDetectedFeatures,
                  ("backupImageExit" .=) <$> _cBackupImageExit,
                  ("position" .=) <$> _cPosition,
                  ("horizontallyLocked" .=) <$> _cHorizontallyLocked])

-- | Creative Asset ID.
--
-- /See:/ 'creativeAssetId' smart constructor.
data CreativeAssetId = CreativeAssetId
    { _caiName :: !(Maybe Text)
    , _caiType :: !(Maybe CreativeAssetIdType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAssetId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiName'
--
-- * 'caiType'
creativeAssetId
    :: CreativeAssetId
creativeAssetId =
    CreativeAssetId
    { _caiName = Nothing
    , _caiType = Nothing
    }

-- | Name of the creative asset. This is a required field while inserting an
-- asset. After insertion, this assetIdentifier is used to identify the
-- uploaded asset. Characters in the name must be alphanumeric or one of
-- the following: \".-_ \". Spaces are allowed.
caiName :: Lens' CreativeAssetId (Maybe Text)
caiName = lens _caiName (\ s a -> s{_caiName = a})

-- | Type of asset to upload. This is a required field. IMAGE is solely used
-- for IMAGE creatives. Other image assets should use HTML_IMAGE.
caiType :: Lens' CreativeAssetId (Maybe CreativeAssetIdType)
caiType = lens _caiType (\ s a -> s{_caiType = a})

instance FromJSON CreativeAssetId where
        parseJSON
          = withObject "CreativeAssetId"
              (\ o ->
                 CreativeAssetId <$>
                   (o .:? "name") <*> (o .:? "type"))

instance ToJSON CreativeAssetId where
        toJSON CreativeAssetId{..}
          = object
              (catMaybes
                 [("name" .=) <$> _caiName, ("type" .=) <$> _caiType])

-- | CreativeAssets contains properties of a creative asset file which will
-- be uploaded or has already been uploaded. Refer to the creative sample
-- code for how to upload assets and insert a creative.
--
-- /See:/ 'creativeAssetMetadata' smart constructor.
data CreativeAssetMetadata = CreativeAssetMetadata
    { _camaKind                  :: !Text
    , _camaAssetIdentifier       :: !(Maybe (Maybe CreativeAssetId))
    , _camaClickTags             :: !(Maybe [Maybe ClickTag])
    , _camaWarnedValidationRules :: !(Maybe [CreativeAssetMetadataItemWarnedValidationRules])
    , _camaDetectedFeatures      :: !(Maybe [CreativeAssetMetadataItemDetectedFeatures])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAssetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camaKind'
--
-- * 'camaAssetIdentifier'
--
-- * 'camaClickTags'
--
-- * 'camaWarnedValidationRules'
--
-- * 'camaDetectedFeatures'
creativeAssetMetadata
    :: CreativeAssetMetadata
creativeAssetMetadata =
    CreativeAssetMetadata
    { _camaKind = "dfareporting#creativeAssetMetadata"
    , _camaAssetIdentifier = Nothing
    , _camaClickTags = Nothing
    , _camaWarnedValidationRules = Nothing
    , _camaDetectedFeatures = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeAssetMetadata\".
camaKind :: Lens' CreativeAssetMetadata Text
camaKind = lens _camaKind (\ s a -> s{_camaKind = a})

-- | ID of the creative asset. This is a required field.
camaAssetIdentifier :: Lens' CreativeAssetMetadata (Maybe (Maybe CreativeAssetId))
camaAssetIdentifier
  = lens _camaAssetIdentifier
      (\ s a -> s{_camaAssetIdentifier = a})

-- | List of detected click tags for assets. This is a read-only
-- auto-generated field.
camaClickTags :: Lens' CreativeAssetMetadata [Maybe ClickTag]
camaClickTags
  = lens _camaClickTags
      (\ s a -> s{_camaClickTags = a})
      . _Default
      . _Coerce

-- | Rules validated during code generation that generated a warning. This is
-- a read-only, auto-generated field. Possible values are: -
-- \"CLICK_TAG_NON_TOP_LEVEL\" - \"CLICK_TAG_MISSING\" -
-- \"CLICK_TAG_MORE_THAN_ONE\" - \"CLICK_TAG_INVALID\" - \"ORPHANED_ASSET\"
-- - \"PRIMARY_HTML_MISSING\" - \"EXTERNAL_FILE_REFERENCED\" -
-- \"MRAID_REFERENCED\" - \"ADMOB_REFERENCED\" - \"FILE_TYPE_INVALID\" -
-- \"ZIP_INVALID\" - \"LINKED_FILE_NOT_FOUND\" - \"MAX_FLASH_VERSION_11\" -
-- \"NOT_SSL_COMPLIANT\" - \"FILE_DETAIL_EMPTY\" - \"ASSET_INVALID\" -
-- \"GWD_PROPERTIES_INVALID\" - \"ENABLER_UNSUPPORTED_METHOD_DCM\" -
-- \"ASSET_FORMAT_UNSUPPORTED_DCM\" - \"COMPONENT_UNSUPPORTED_DCM\" -
-- \"HTML5_FEATURE_UNSUPPORTED\' \"
camaWarnedValidationRules :: Lens' CreativeAssetMetadata [CreativeAssetMetadataItemWarnedValidationRules]
camaWarnedValidationRules
  = lens _camaWarnedValidationRules
      (\ s a -> s{_camaWarnedValidationRules = a})
      . _Default
      . _Coerce

-- | List of feature dependencies for the creative asset that are detected by
-- DCM. Feature dependencies are features that a browser must be able to
-- support in order to render your HTML5 creative correctly. This is a
-- read-only, auto-generated field.
camaDetectedFeatures :: Lens' CreativeAssetMetadata [CreativeAssetMetadataItemDetectedFeatures]
camaDetectedFeatures
  = lens _camaDetectedFeatures
      (\ s a -> s{_camaDetectedFeatures = a})
      . _Default
      . _Coerce

instance FromJSON CreativeAssetMetadata where
        parseJSON
          = withObject "CreativeAssetMetadata"
              (\ o ->
                 CreativeAssetMetadata <$>
                   (o .:? "kind" .!=
                      "dfareporting#creativeAssetMetadata")
                     <*> (o .:? "assetIdentifier")
                     <*> (o .:? "clickTags" .!= mempty)
                     <*> (o .:? "warnedValidationRules" .!= mempty)
                     <*> (o .:? "detectedFeatures" .!= mempty))

instance ToJSON CreativeAssetMetadata where
        toJSON CreativeAssetMetadata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _camaKind),
                  ("assetIdentifier" .=) <$> _camaAssetIdentifier,
                  ("clickTags" .=) <$> _camaClickTags,
                  ("warnedValidationRules" .=) <$>
                    _camaWarnedValidationRules,
                  ("detectedFeatures" .=) <$> _camaDetectedFeatures])

-- | Creative Assignment.
--
-- /See:/ 'creativeAssignment' smart constructor.
data CreativeAssignment = CreativeAssignment
    { _caCreativeGroupAssignments   :: !(Maybe [Maybe CreativeGroupAssignment])
    , _caStartTime                  :: !(Maybe UTCTime)
    , _caWeight                     :: !(Maybe Int32)
    , _caRichMediaExitOverrides     :: !(Maybe [Maybe RichMediaExitOverride])
    , _caSslCompliant               :: !(Maybe Bool)
    , _caCreativeId                 :: !(Maybe Int64)
    , _caClickThroughUrl            :: !(Maybe (Maybe ClickThroughUrl))
    , _caApplyEventTags             :: !(Maybe Bool)
    , _caActive                     :: !(Maybe Bool)
    , _caSequence                   :: !(Maybe Int32)
    , _caEndTime                    :: !(Maybe UTCTime)
    , _caCompanionCreativeOverrides :: !(Maybe [Maybe CompanionClickThroughOverride])
    , _caCreativeIdDimensionValue   :: !(Maybe (Maybe DimensionValue))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caCreativeGroupAssignments'
--
-- * 'caStartTime'
--
-- * 'caWeight'
--
-- * 'caRichMediaExitOverrides'
--
-- * 'caSslCompliant'
--
-- * 'caCreativeId'
--
-- * 'caClickThroughUrl'
--
-- * 'caApplyEventTags'
--
-- * 'caActive'
--
-- * 'caSequence'
--
-- * 'caEndTime'
--
-- * 'caCompanionCreativeOverrides'
--
-- * 'caCreativeIdDimensionValue'
creativeAssignment
    :: CreativeAssignment
creativeAssignment =
    CreativeAssignment
    { _caCreativeGroupAssignments = Nothing
    , _caStartTime = Nothing
    , _caWeight = Nothing
    , _caRichMediaExitOverrides = Nothing
    , _caSslCompliant = Nothing
    , _caCreativeId = Nothing
    , _caClickThroughUrl = Nothing
    , _caApplyEventTags = Nothing
    , _caActive = Nothing
    , _caSequence = Nothing
    , _caEndTime = Nothing
    , _caCompanionCreativeOverrides = Nothing
    , _caCreativeIdDimensionValue = Nothing
    }

-- | Creative group assignments for this creative assignment. Only one
-- assignment per creative group number is allowed for a maximum of two
-- assignments.
caCreativeGroupAssignments :: Lens' CreativeAssignment [Maybe CreativeGroupAssignment]
caCreativeGroupAssignments
  = lens _caCreativeGroupAssignments
      (\ s a -> s{_caCreativeGroupAssignments = a})
      . _Default
      . _Coerce

-- | Date and time that the assigned creative should start serving.
caStartTime :: Lens' CreativeAssignment (Maybe UTCTime)
caStartTime
  = lens _caStartTime (\ s a -> s{_caStartTime = a})

-- | Weight of the creative assignment, applicable when the rotation type is
-- CREATIVE_ROTATION_TYPE_RANDOM.
caWeight :: Lens' CreativeAssignment (Maybe Int32)
caWeight = lens _caWeight (\ s a -> s{_caWeight = a})

-- | Rich media exit overrides for this creative assignment. Applicable when
-- the creative type is any of the following: - RICH_MEDIA_INPAGE -
-- RICH_MEDIA_INPAGE_FLOATING - RICH_MEDIA_IM_EXPAND - RICH_MEDIA_EXPANDING
-- - RICH_MEDIA_INTERSTITIAL_FLOAT - RICH_MEDIA_MOBILE_IN_APP -
-- RICH_MEDIA_MULTI_FLOATING - RICH_MEDIA_PEEL_DOWN - ADVANCED_BANNER -
-- VPAID_LINEAR - VPAID_NON_LINEAR
caRichMediaExitOverrides :: Lens' CreativeAssignment [Maybe RichMediaExitOverride]
caRichMediaExitOverrides
  = lens _caRichMediaExitOverrides
      (\ s a -> s{_caRichMediaExitOverrides = a})
      . _Default
      . _Coerce

-- | Whether the creative to be assigned is SSL-compliant. This is a
-- read-only field that is auto-generated when the ad is inserted or
-- updated.
caSslCompliant :: Lens' CreativeAssignment (Maybe Bool)
caSslCompliant
  = lens _caSslCompliant
      (\ s a -> s{_caSslCompliant = a})

-- | ID of the creative to be assigned. This is a required field.
caCreativeId :: Lens' CreativeAssignment (Maybe Int64)
caCreativeId
  = lens _caCreativeId (\ s a -> s{_caCreativeId = a})

-- | Click-through URL of the creative assignment.
caClickThroughUrl :: Lens' CreativeAssignment (Maybe (Maybe ClickThroughUrl))
caClickThroughUrl
  = lens _caClickThroughUrl
      (\ s a -> s{_caClickThroughUrl = a})

-- | Whether applicable event tags should fire when this creative assignment
-- is rendered. If this value is unset when the ad is inserted or updated,
-- it will default to true for all creative types EXCEPT for
-- INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO.
caApplyEventTags :: Lens' CreativeAssignment (Maybe Bool)
caApplyEventTags
  = lens _caApplyEventTags
      (\ s a -> s{_caApplyEventTags = a})

-- | Whether this creative assignment is active. When true, the creative will
-- be included in the ad\'s rotation.
caActive :: Lens' CreativeAssignment (Maybe Bool)
caActive = lens _caActive (\ s a -> s{_caActive = a})

-- | Sequence number of the creative assignment, applicable when the rotation
-- type is CREATIVE_ROTATION_TYPE_SEQUENTIAL.
caSequence :: Lens' CreativeAssignment (Maybe Int32)
caSequence
  = lens _caSequence (\ s a -> s{_caSequence = a})

-- | Date and time that the assigned creative should stop serving. Must be
-- later than the start time.
caEndTime :: Lens' CreativeAssignment (Maybe UTCTime)
caEndTime
  = lens _caEndTime (\ s a -> s{_caEndTime = a})

-- | Companion creative overrides for this creative assignment. Applicable to
-- video ads.
caCompanionCreativeOverrides :: Lens' CreativeAssignment [Maybe CompanionClickThroughOverride]
caCompanionCreativeOverrides
  = lens _caCompanionCreativeOverrides
      (\ s a -> s{_caCompanionCreativeOverrides = a})
      . _Default
      . _Coerce

-- | Dimension value for the ID of the creative. This is a read-only,
-- auto-generated field.
caCreativeIdDimensionValue :: Lens' CreativeAssignment (Maybe (Maybe DimensionValue))
caCreativeIdDimensionValue
  = lens _caCreativeIdDimensionValue
      (\ s a -> s{_caCreativeIdDimensionValue = a})

instance FromJSON CreativeAssignment where
        parseJSON
          = withObject "CreativeAssignment"
              (\ o ->
                 CreativeAssignment <$>
                   (o .:? "creativeGroupAssignments" .!= mempty) <*>
                     (o .:? "startTime")
                     <*> (o .:? "weight")
                     <*> (o .:? "richMediaExitOverrides" .!= mempty)
                     <*> (o .:? "sslCompliant")
                     <*> (o .:? "creativeId")
                     <*> (o .:? "clickThroughUrl")
                     <*> (o .:? "applyEventTags")
                     <*> (o .:? "active")
                     <*> (o .:? "sequence")
                     <*> (o .:? "endTime")
                     <*> (o .:? "companionCreativeOverrides" .!= mempty)
                     <*> (o .:? "creativeIdDimensionValue"))

instance ToJSON CreativeAssignment where
        toJSON CreativeAssignment{..}
          = object
              (catMaybes
                 [("creativeGroupAssignments" .=) <$>
                    _caCreativeGroupAssignments,
                  ("startTime" .=) <$> _caStartTime,
                  ("weight" .=) <$> _caWeight,
                  ("richMediaExitOverrides" .=) <$>
                    _caRichMediaExitOverrides,
                  ("sslCompliant" .=) <$> _caSslCompliant,
                  ("creativeId" .=) <$> _caCreativeId,
                  ("clickThroughUrl" .=) <$> _caClickThroughUrl,
                  ("applyEventTags" .=) <$> _caApplyEventTags,
                  ("active" .=) <$> _caActive,
                  ("sequence" .=) <$> _caSequence,
                  ("endTime" .=) <$> _caEndTime,
                  ("companionCreativeOverrides" .=) <$>
                    _caCompanionCreativeOverrides,
                  ("creativeIdDimensionValue" .=) <$>
                    _caCreativeIdDimensionValue])

-- | Creative Custom Event.
--
-- /See:/ 'creativeCustomEvent' smart constructor.
data CreativeCustomEvent = CreativeCustomEvent
    { _cceAdvertiserCustomEventType :: !(Maybe CreativeCustomEventAdvertiserCustomEventType)
    , _cceAdvertiserCustomEventName :: !(Maybe Text)
    , _cceExitUrl                   :: !(Maybe Text)
    , _cceTargetType                :: !(Maybe CreativeCustomEventTargetType)
    , _ccePopupWindowProperties     :: !(Maybe (Maybe PopupWindowProperties))
    , _cceVideoReportingId          :: !(Maybe Text)
    , _cceId                        :: !(Maybe Int64)
    , _cceArtworkLabel              :: !(Maybe Text)
    , _cceArtworkType               :: !(Maybe CreativeCustomEventArtworkType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeCustomEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cceAdvertiserCustomEventType'
--
-- * 'cceAdvertiserCustomEventName'
--
-- * 'cceExitUrl'
--
-- * 'cceTargetType'
--
-- * 'ccePopupWindowProperties'
--
-- * 'cceVideoReportingId'
--
-- * 'cceId'
--
-- * 'cceArtworkLabel'
--
-- * 'cceArtworkType'
creativeCustomEvent
    :: CreativeCustomEvent
creativeCustomEvent =
    CreativeCustomEvent
    { _cceAdvertiserCustomEventType = Nothing
    , _cceAdvertiserCustomEventName = Nothing
    , _cceExitUrl = Nothing
    , _cceTargetType = Nothing
    , _ccePopupWindowProperties = Nothing
    , _cceVideoReportingId = Nothing
    , _cceId = Nothing
    , _cceArtworkLabel = Nothing
    , _cceArtworkType = Nothing
    }

-- | Type of the event. This is a read-only field.
cceAdvertiserCustomEventType :: Lens' CreativeCustomEvent (Maybe CreativeCustomEventAdvertiserCustomEventType)
cceAdvertiserCustomEventType
  = lens _cceAdvertiserCustomEventType
      (\ s a -> s{_cceAdvertiserCustomEventType = a})

-- | User-entered name for the event.
cceAdvertiserCustomEventName :: Lens' CreativeCustomEvent (Maybe Text)
cceAdvertiserCustomEventName
  = lens _cceAdvertiserCustomEventName
      (\ s a -> s{_cceAdvertiserCustomEventName = a})

-- | Exit URL of the event. This field is used only for exit events.
cceExitUrl :: Lens' CreativeCustomEvent (Maybe Text)
cceExitUrl
  = lens _cceExitUrl (\ s a -> s{_cceExitUrl = a})

-- | Target type used by the event.
cceTargetType :: Lens' CreativeCustomEvent (Maybe CreativeCustomEventTargetType)
cceTargetType
  = lens _cceTargetType
      (\ s a -> s{_cceTargetType = a})

-- | Properties for rich media popup windows. This field is used only for
-- exit events.
ccePopupWindowProperties :: Lens' CreativeCustomEvent (Maybe (Maybe PopupWindowProperties))
ccePopupWindowProperties
  = lens _ccePopupWindowProperties
      (\ s a -> s{_ccePopupWindowProperties = a})

-- | Reporting ID, used to differentiate multiple videos in a single
-- creative.
cceVideoReportingId :: Lens' CreativeCustomEvent (Maybe Text)
cceVideoReportingId
  = lens _cceVideoReportingId
      (\ s a -> s{_cceVideoReportingId = a})

-- | ID of this event. This is a required field and should not be modified
-- after insertion.
cceId :: Lens' CreativeCustomEvent (Maybe Int64)
cceId = lens _cceId (\ s a -> s{_cceId = a})

-- | Artwork label column, used to link events in DCM back to events in
-- Studio. This is a required field and should not be modified after
-- insertion.
cceArtworkLabel :: Lens' CreativeCustomEvent (Maybe Text)
cceArtworkLabel
  = lens _cceArtworkLabel
      (\ s a -> s{_cceArtworkLabel = a})

-- | Artwork type used by the creative.This is a read-only field.
cceArtworkType :: Lens' CreativeCustomEvent (Maybe CreativeCustomEventArtworkType)
cceArtworkType
  = lens _cceArtworkType
      (\ s a -> s{_cceArtworkType = a})

instance FromJSON CreativeCustomEvent where
        parseJSON
          = withObject "CreativeCustomEvent"
              (\ o ->
                 CreativeCustomEvent <$>
                   (o .:? "advertiserCustomEventType") <*>
                     (o .:? "advertiserCustomEventName")
                     <*> (o .:? "exitUrl")
                     <*> (o .:? "targetType")
                     <*> (o .:? "popupWindowProperties")
                     <*> (o .:? "videoReportingId")
                     <*> (o .:? "id")
                     <*> (o .:? "artworkLabel")
                     <*> (o .:? "artworkType"))

instance ToJSON CreativeCustomEvent where
        toJSON CreativeCustomEvent{..}
          = object
              (catMaybes
                 [("advertiserCustomEventType" .=) <$>
                    _cceAdvertiserCustomEventType,
                  ("advertiserCustomEventName" .=) <$>
                    _cceAdvertiserCustomEventName,
                  ("exitUrl" .=) <$> _cceExitUrl,
                  ("targetType" .=) <$> _cceTargetType,
                  ("popupWindowProperties" .=) <$>
                    _ccePopupWindowProperties,
                  ("videoReportingId" .=) <$> _cceVideoReportingId,
                  ("id" .=) <$> _cceId,
                  ("artworkLabel" .=) <$> _cceArtworkLabel,
                  ("artworkType" .=) <$> _cceArtworkType])

-- | Contains properties of a creative field.
--
-- /See:/ 'creativeField' smart constructor.
data CreativeField = CreativeField
    { _creKind                       :: !Text
    , _creAdvertiserId               :: !(Maybe Int64)
    , _creAdvertiserIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _creAccountId                  :: !(Maybe Int64)
    , _creName                       :: !(Maybe Text)
    , _creId                         :: !(Maybe Int64)
    , _creSubaccountId               :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creKind'
--
-- * 'creAdvertiserId'
--
-- * 'creAdvertiserIdDimensionValue'
--
-- * 'creAccountId'
--
-- * 'creName'
--
-- * 'creId'
--
-- * 'creSubaccountId'
creativeField
    :: CreativeField
creativeField =
    CreativeField
    { _creKind = "dfareporting#creativeField"
    , _creAdvertiserId = Nothing
    , _creAdvertiserIdDimensionValue = Nothing
    , _creAccountId = Nothing
    , _creName = Nothing
    , _creId = Nothing
    , _creSubaccountId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeField\".
creKind :: Lens' CreativeField Text
creKind = lens _creKind (\ s a -> s{_creKind = a})

-- | Advertiser ID of this creative field. This is a required field on
-- insertion.
creAdvertiserId :: Lens' CreativeField (Maybe Int64)
creAdvertiserId
  = lens _creAdvertiserId
      (\ s a -> s{_creAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
creAdvertiserIdDimensionValue :: Lens' CreativeField (Maybe (Maybe DimensionValue))
creAdvertiserIdDimensionValue
  = lens _creAdvertiserIdDimensionValue
      (\ s a -> s{_creAdvertiserIdDimensionValue = a})

-- | Account ID of this creative field. This is a read-only field that can be
-- left blank.
creAccountId :: Lens' CreativeField (Maybe Int64)
creAccountId
  = lens _creAccountId (\ s a -> s{_creAccountId = a})

-- | Name of this creative field. This is a required field and must be less
-- than 256 characters long and unique among creative fields of the same
-- advertiser.
creName :: Lens' CreativeField (Maybe Text)
creName = lens _creName (\ s a -> s{_creName = a})

-- | ID of this creative field. This is a read-only, auto-generated field.
creId :: Lens' CreativeField (Maybe Int64)
creId = lens _creId (\ s a -> s{_creId = a})

-- | Subaccount ID of this creative field. This is a read-only field that can
-- be left blank.
creSubaccountId :: Lens' CreativeField (Maybe Int64)
creSubaccountId
  = lens _creSubaccountId
      (\ s a -> s{_creSubaccountId = a})

instance FromJSON CreativeField where
        parseJSON
          = withObject "CreativeField"
              (\ o ->
                 CreativeField <$>
                   (o .:? "kind" .!= "dfareporting#creativeField") <*>
                     (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId"))

instance ToJSON CreativeField where
        toJSON CreativeField{..}
          = object
              (catMaybes
                 [Just ("kind" .= _creKind),
                  ("advertiserId" .=) <$> _creAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _creAdvertiserIdDimensionValue,
                  ("accountId" .=) <$> _creAccountId,
                  ("name" .=) <$> _creName, ("id" .=) <$> _creId,
                  ("subaccountId" .=) <$> _creSubaccountId])

-- | Creative Field Assignment.
--
-- /See:/ 'creativeFieldAssignment' smart constructor.
data CreativeFieldAssignment = CreativeFieldAssignment
    { _cfaCreativeFieldId      :: !(Maybe Int64)
    , _cfaCreativeFieldValueId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfaCreativeFieldId'
--
-- * 'cfaCreativeFieldValueId'
creativeFieldAssignment
    :: CreativeFieldAssignment
creativeFieldAssignment =
    CreativeFieldAssignment
    { _cfaCreativeFieldId = Nothing
    , _cfaCreativeFieldValueId = Nothing
    }

-- | ID of the creative field.
cfaCreativeFieldId :: Lens' CreativeFieldAssignment (Maybe Int64)
cfaCreativeFieldId
  = lens _cfaCreativeFieldId
      (\ s a -> s{_cfaCreativeFieldId = a})

-- | ID of the creative field value.
cfaCreativeFieldValueId :: Lens' CreativeFieldAssignment (Maybe Int64)
cfaCreativeFieldValueId
  = lens _cfaCreativeFieldValueId
      (\ s a -> s{_cfaCreativeFieldValueId = a})

instance FromJSON CreativeFieldAssignment where
        parseJSON
          = withObject "CreativeFieldAssignment"
              (\ o ->
                 CreativeFieldAssignment <$>
                   (o .:? "creativeFieldId") <*>
                     (o .:? "creativeFieldValueId"))

instance ToJSON CreativeFieldAssignment where
        toJSON CreativeFieldAssignment{..}
          = object
              (catMaybes
                 [("creativeFieldId" .=) <$> _cfaCreativeFieldId,
                  ("creativeFieldValueId" .=) <$>
                    _cfaCreativeFieldValueId])

-- | Contains properties of a creative field value.
--
-- /See:/ 'creativeFieldValue' smart constructor.
data CreativeFieldValue = CreativeFieldValue
    { _cfvKind  :: !Text
    , _cfvValue :: !(Maybe Text)
    , _cfvId    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvKind'
--
-- * 'cfvValue'
--
-- * 'cfvId'
creativeFieldValue
    :: CreativeFieldValue
creativeFieldValue =
    CreativeFieldValue
    { _cfvKind = "dfareporting#creativeFieldValue"
    , _cfvValue = Nothing
    , _cfvId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeFieldValue\".
cfvKind :: Lens' CreativeFieldValue Text
cfvKind = lens _cfvKind (\ s a -> s{_cfvKind = a})

-- | Value of this creative field value. It needs to be less than 256
-- characters in length and unique per creative field.
cfvValue :: Lens' CreativeFieldValue (Maybe Text)
cfvValue = lens _cfvValue (\ s a -> s{_cfvValue = a})

-- | ID of this creative field value. This is a read-only, auto-generated
-- field.
cfvId :: Lens' CreativeFieldValue (Maybe Int64)
cfvId = lens _cfvId (\ s a -> s{_cfvId = a})

instance FromJSON CreativeFieldValue where
        parseJSON
          = withObject "CreativeFieldValue"
              (\ o ->
                 CreativeFieldValue <$>
                   (o .:? "kind" .!= "dfareporting#creativeFieldValue")
                     <*> (o .:? "value")
                     <*> (o .:? "id"))

instance ToJSON CreativeFieldValue where
        toJSON CreativeFieldValue{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cfvKind),
                  ("value" .=) <$> _cfvValue, ("id" .=) <$> _cfvId])

-- | Creative Field Value List Response
--
-- /See:/ 'creativeFieldValuesListResponse' smart constructor.
data CreativeFieldValuesListResponse = CreativeFieldValuesListResponse
    { _cfvlrNextPageToken       :: !(Maybe Text)
    , _cfvlrKind                :: !Text
    , _cfvlrCreativeFieldValues :: !(Maybe [Maybe CreativeFieldValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvlrNextPageToken'
--
-- * 'cfvlrKind'
--
-- * 'cfvlrCreativeFieldValues'
creativeFieldValuesListResponse
    :: CreativeFieldValuesListResponse
creativeFieldValuesListResponse =
    CreativeFieldValuesListResponse
    { _cfvlrNextPageToken = Nothing
    , _cfvlrKind = "dfareporting#creativeFieldValuesListResponse"
    , _cfvlrCreativeFieldValues = Nothing
    }

-- | Pagination token to be used for the next list operation.
cfvlrNextPageToken :: Lens' CreativeFieldValuesListResponse (Maybe Text)
cfvlrNextPageToken
  = lens _cfvlrNextPageToken
      (\ s a -> s{_cfvlrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeFieldValuesListResponse\".
cfvlrKind :: Lens' CreativeFieldValuesListResponse Text
cfvlrKind
  = lens _cfvlrKind (\ s a -> s{_cfvlrKind = a})

-- | Creative field value collection.
cfvlrCreativeFieldValues :: Lens' CreativeFieldValuesListResponse [Maybe CreativeFieldValue]
cfvlrCreativeFieldValues
  = lens _cfvlrCreativeFieldValues
      (\ s a -> s{_cfvlrCreativeFieldValues = a})
      . _Default
      . _Coerce

instance FromJSON CreativeFieldValuesListResponse
         where
        parseJSON
          = withObject "CreativeFieldValuesListResponse"
              (\ o ->
                 CreativeFieldValuesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#creativeFieldValuesListResponse")
                     <*> (o .:? "creativeFieldValues" .!= mempty))

instance ToJSON CreativeFieldValuesListResponse where
        toJSON CreativeFieldValuesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _cfvlrNextPageToken,
                  Just ("kind" .= _cfvlrKind),
                  ("creativeFieldValues" .=) <$>
                    _cfvlrCreativeFieldValues])

-- | Creative Field List Response
--
-- /See:/ 'creativeFieldsListResponse' smart constructor.
data CreativeFieldsListResponse = CreativeFieldsListResponse
    { _cflrNextPageToken  :: !(Maybe Text)
    , _cflrKind           :: !Text
    , _cflrCreativeFields :: !(Maybe [Maybe CreativeField])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflrNextPageToken'
--
-- * 'cflrKind'
--
-- * 'cflrCreativeFields'
creativeFieldsListResponse
    :: CreativeFieldsListResponse
creativeFieldsListResponse =
    CreativeFieldsListResponse
    { _cflrNextPageToken = Nothing
    , _cflrKind = "dfareporting#creativeFieldsListResponse"
    , _cflrCreativeFields = Nothing
    }

-- | Pagination token to be used for the next list operation.
cflrNextPageToken :: Lens' CreativeFieldsListResponse (Maybe Text)
cflrNextPageToken
  = lens _cflrNextPageToken
      (\ s a -> s{_cflrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeFieldsListResponse\".
cflrKind :: Lens' CreativeFieldsListResponse Text
cflrKind = lens _cflrKind (\ s a -> s{_cflrKind = a})

-- | Creative field collection.
cflrCreativeFields :: Lens' CreativeFieldsListResponse [Maybe CreativeField]
cflrCreativeFields
  = lens _cflrCreativeFields
      (\ s a -> s{_cflrCreativeFields = a})
      . _Default
      . _Coerce

instance FromJSON CreativeFieldsListResponse where
        parseJSON
          = withObject "CreativeFieldsListResponse"
              (\ o ->
                 CreativeFieldsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#creativeFieldsListResponse")
                     <*> (o .:? "creativeFields" .!= mempty))

instance ToJSON CreativeFieldsListResponse where
        toJSON CreativeFieldsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _cflrNextPageToken,
                  Just ("kind" .= _cflrKind),
                  ("creativeFields" .=) <$> _cflrCreativeFields])

-- | Contains properties of a creative group.
--
-- /See:/ 'creativeGroup' smart constructor.
data CreativeGroup = CreativeGroup
    { _cgKind                       :: !Text
    , _cgAdvertiserId               :: !(Maybe Int64)
    , _cgAdvertiserIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _cgGroupNumber                :: !(Maybe Int32)
    , _cgAccountId                  :: !(Maybe Int64)
    , _cgName                       :: !(Maybe Text)
    , _cgId                         :: !(Maybe Int64)
    , _cgSubaccountId               :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgKind'
--
-- * 'cgAdvertiserId'
--
-- * 'cgAdvertiserIdDimensionValue'
--
-- * 'cgGroupNumber'
--
-- * 'cgAccountId'
--
-- * 'cgName'
--
-- * 'cgId'
--
-- * 'cgSubaccountId'
creativeGroup
    :: CreativeGroup
creativeGroup =
    CreativeGroup
    { _cgKind = "dfareporting#creativeGroup"
    , _cgAdvertiserId = Nothing
    , _cgAdvertiserIdDimensionValue = Nothing
    , _cgGroupNumber = Nothing
    , _cgAccountId = Nothing
    , _cgName = Nothing
    , _cgId = Nothing
    , _cgSubaccountId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeGroup\".
cgKind :: Lens' CreativeGroup Text
cgKind = lens _cgKind (\ s a -> s{_cgKind = a})

-- | Advertiser ID of this creative group. This is a required field on
-- insertion.
cgAdvertiserId :: Lens' CreativeGroup (Maybe Int64)
cgAdvertiserId
  = lens _cgAdvertiserId
      (\ s a -> s{_cgAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
cgAdvertiserIdDimensionValue :: Lens' CreativeGroup (Maybe (Maybe DimensionValue))
cgAdvertiserIdDimensionValue
  = lens _cgAdvertiserIdDimensionValue
      (\ s a -> s{_cgAdvertiserIdDimensionValue = a})

-- | Subgroup of the creative group. Assign your creative groups to one of
-- the following subgroups in order to filter or manage them more easily.
-- This field is required on insertion and is read-only after insertion.
-- Acceptable values are: - 1 - 2
cgGroupNumber :: Lens' CreativeGroup (Maybe Int32)
cgGroupNumber
  = lens _cgGroupNumber
      (\ s a -> s{_cgGroupNumber = a})

-- | Account ID of this creative group. This is a read-only field that can be
-- left blank.
cgAccountId :: Lens' CreativeGroup (Maybe Int64)
cgAccountId
  = lens _cgAccountId (\ s a -> s{_cgAccountId = a})

-- | Name of this creative group. This is a required field and must be less
-- than 256 characters long and unique among creative groups of the same
-- advertiser.
cgName :: Lens' CreativeGroup (Maybe Text)
cgName = lens _cgName (\ s a -> s{_cgName = a})

-- | ID of this creative group. This is a read-only, auto-generated field.
cgId :: Lens' CreativeGroup (Maybe Int64)
cgId = lens _cgId (\ s a -> s{_cgId = a})

-- | Subaccount ID of this creative group. This is a read-only field that can
-- be left blank.
cgSubaccountId :: Lens' CreativeGroup (Maybe Int64)
cgSubaccountId
  = lens _cgSubaccountId
      (\ s a -> s{_cgSubaccountId = a})

instance FromJSON CreativeGroup where
        parseJSON
          = withObject "CreativeGroup"
              (\ o ->
                 CreativeGroup <$>
                   (o .:? "kind" .!= "dfareporting#creativeGroup") <*>
                     (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "groupNumber")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId"))

instance ToJSON CreativeGroup where
        toJSON CreativeGroup{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cgKind),
                  ("advertiserId" .=) <$> _cgAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _cgAdvertiserIdDimensionValue,
                  ("groupNumber" .=) <$> _cgGroupNumber,
                  ("accountId" .=) <$> _cgAccountId,
                  ("name" .=) <$> _cgName, ("id" .=) <$> _cgId,
                  ("subaccountId" .=) <$> _cgSubaccountId])

-- | Creative Group Assignment.
--
-- /See:/ 'creativeGroupAssignment' smart constructor.
data CreativeGroupAssignment = CreativeGroupAssignment
    { _cgaCreativeGroupNumber :: !(Maybe CreativeGroupAssignmentCreativeGroupNumber)
    , _cgaCreativeGroupId     :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgaCreativeGroupNumber'
--
-- * 'cgaCreativeGroupId'
creativeGroupAssignment
    :: CreativeGroupAssignment
creativeGroupAssignment =
    CreativeGroupAssignment
    { _cgaCreativeGroupNumber = Nothing
    , _cgaCreativeGroupId = Nothing
    }

-- | Creative group number of the creative group assignment.
cgaCreativeGroupNumber :: Lens' CreativeGroupAssignment (Maybe CreativeGroupAssignmentCreativeGroupNumber)
cgaCreativeGroupNumber
  = lens _cgaCreativeGroupNumber
      (\ s a -> s{_cgaCreativeGroupNumber = a})

-- | ID of the creative group to be assigned.
cgaCreativeGroupId :: Lens' CreativeGroupAssignment (Maybe Int64)
cgaCreativeGroupId
  = lens _cgaCreativeGroupId
      (\ s a -> s{_cgaCreativeGroupId = a})

instance FromJSON CreativeGroupAssignment where
        parseJSON
          = withObject "CreativeGroupAssignment"
              (\ o ->
                 CreativeGroupAssignment <$>
                   (o .:? "creativeGroupNumber") <*>
                     (o .:? "creativeGroupId"))

instance ToJSON CreativeGroupAssignment where
        toJSON CreativeGroupAssignment{..}
          = object
              (catMaybes
                 [("creativeGroupNumber" .=) <$>
                    _cgaCreativeGroupNumber,
                  ("creativeGroupId" .=) <$> _cgaCreativeGroupId])

-- | Creative Group List Response
--
-- /See:/ 'creativeGroupsListResponse' smart constructor.
data CreativeGroupsListResponse = CreativeGroupsListResponse
    { _cglrCreativeGroups :: !(Maybe [Maybe CreativeGroup])
    , _cglrNextPageToken  :: !(Maybe Text)
    , _cglrKind           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cglrCreativeGroups'
--
-- * 'cglrNextPageToken'
--
-- * 'cglrKind'
creativeGroupsListResponse
    :: CreativeGroupsListResponse
creativeGroupsListResponse =
    CreativeGroupsListResponse
    { _cglrCreativeGroups = Nothing
    , _cglrNextPageToken = Nothing
    , _cglrKind = "dfareporting#creativeGroupsListResponse"
    }

-- | Creative group collection.
cglrCreativeGroups :: Lens' CreativeGroupsListResponse [Maybe CreativeGroup]
cglrCreativeGroups
  = lens _cglrCreativeGroups
      (\ s a -> s{_cglrCreativeGroups = a})
      . _Default
      . _Coerce

-- | Pagination token to be used for the next list operation.
cglrNextPageToken :: Lens' CreativeGroupsListResponse (Maybe Text)
cglrNextPageToken
  = lens _cglrNextPageToken
      (\ s a -> s{_cglrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativeGroupsListResponse\".
cglrKind :: Lens' CreativeGroupsListResponse Text
cglrKind = lens _cglrKind (\ s a -> s{_cglrKind = a})

instance FromJSON CreativeGroupsListResponse where
        parseJSON
          = withObject "CreativeGroupsListResponse"
              (\ o ->
                 CreativeGroupsListResponse <$>
                   (o .:? "creativeGroups" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#creativeGroupsListResponse"))

instance ToJSON CreativeGroupsListResponse where
        toJSON CreativeGroupsListResponse{..}
          = object
              (catMaybes
                 [("creativeGroups" .=) <$> _cglrCreativeGroups,
                  ("nextPageToken" .=) <$> _cglrNextPageToken,
                  Just ("kind" .= _cglrKind)])

-- | Creative optimization settings.
--
-- /See:/ 'creativeOptimizationConfiguration' smart constructor.
data CreativeOptimizationConfiguration = CreativeOptimizationConfiguration
    { _cocOptimizationModel     :: !(Maybe CreativeOptimizationConfigurationOptimizationModel)
    , _cocName                  :: !(Maybe Text)
    , _cocOptimizationActivitys :: !(Maybe [Maybe OptimizationActivity])
    , _cocId                    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeOptimizationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cocOptimizationModel'
--
-- * 'cocName'
--
-- * 'cocOptimizationActivitys'
--
-- * 'cocId'
creativeOptimizationConfiguration
    :: CreativeOptimizationConfiguration
creativeOptimizationConfiguration =
    CreativeOptimizationConfiguration
    { _cocOptimizationModel = Nothing
    , _cocName = Nothing
    , _cocOptimizationActivitys = Nothing
    , _cocId = Nothing
    }

-- | Optimization model for this configuration.
cocOptimizationModel :: Lens' CreativeOptimizationConfiguration (Maybe CreativeOptimizationConfigurationOptimizationModel)
cocOptimizationModel
  = lens _cocOptimizationModel
      (\ s a -> s{_cocOptimizationModel = a})

-- | Name of this creative optimization config. This is a required field and
-- must be less than 129 characters long.
cocName :: Lens' CreativeOptimizationConfiguration (Maybe Text)
cocName = lens _cocName (\ s a -> s{_cocName = a})

-- | List of optimization activities associated with this configuration.
cocOptimizationActivitys :: Lens' CreativeOptimizationConfiguration [Maybe OptimizationActivity]
cocOptimizationActivitys
  = lens _cocOptimizationActivitys
      (\ s a -> s{_cocOptimizationActivitys = a})
      . _Default
      . _Coerce

-- | ID of this creative optimization config. This field is auto-generated
-- when the campaign is inserted or updated. It can be null for existing
-- campaigns.
cocId :: Lens' CreativeOptimizationConfiguration (Maybe Int64)
cocId = lens _cocId (\ s a -> s{_cocId = a})

instance FromJSON CreativeOptimizationConfiguration
         where
        parseJSON
          = withObject "CreativeOptimizationConfiguration"
              (\ o ->
                 CreativeOptimizationConfiguration <$>
                   (o .:? "optimizationModel") <*> (o .:? "name") <*>
                     (o .:? "optimizationActivitys" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON CreativeOptimizationConfiguration
         where
        toJSON CreativeOptimizationConfiguration{..}
          = object
              (catMaybes
                 [("optimizationModel" .=) <$> _cocOptimizationModel,
                  ("name" .=) <$> _cocName,
                  ("optimizationActivitys" .=) <$>
                    _cocOptimizationActivitys,
                  ("id" .=) <$> _cocId])

-- | Creative Rotation.
--
-- /See:/ 'creativeRotation' smart constructor.
data CreativeRotation = CreativeRotation
    { _crWeightCalculationStrategy           :: !(Maybe CreativeRotationWeightCalculationStrategy)
    , _crCreativeAssignments                 :: !(Maybe [Maybe CreativeAssignment])
    , _crCreativeOptimizationConfigurationId :: !(Maybe Int64)
    , _crType                                :: !(Maybe CreativeRotationType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeRotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crWeightCalculationStrategy'
--
-- * 'crCreativeAssignments'
--
-- * 'crCreativeOptimizationConfigurationId'
--
-- * 'crType'
creativeRotation
    :: CreativeRotation
creativeRotation =
    CreativeRotation
    { _crWeightCalculationStrategy = Nothing
    , _crCreativeAssignments = Nothing
    , _crCreativeOptimizationConfigurationId = Nothing
    , _crType = Nothing
    }

-- | Strategy for calculating weights. Used with
-- CREATIVE_ROTATION_TYPE_RANDOM.
crWeightCalculationStrategy :: Lens' CreativeRotation (Maybe CreativeRotationWeightCalculationStrategy)
crWeightCalculationStrategy
  = lens _crWeightCalculationStrategy
      (\ s a -> s{_crWeightCalculationStrategy = a})

-- | Creative assignments in this creative rotation.
crCreativeAssignments :: Lens' CreativeRotation [Maybe CreativeAssignment]
crCreativeAssignments
  = lens _crCreativeAssignments
      (\ s a -> s{_crCreativeAssignments = a})
      . _Default
      . _Coerce

-- | Creative optimization configuration that is used by this ad. It should
-- refer to one of the existing optimization configurations in the ad\'s
-- campaign. If it is unset or set to 0, then the campaign\'s default
-- optimization configuration will be used for this ad.
crCreativeOptimizationConfigurationId :: Lens' CreativeRotation (Maybe Int64)
crCreativeOptimizationConfigurationId
  = lens _crCreativeOptimizationConfigurationId
      (\ s a ->
         s{_crCreativeOptimizationConfigurationId = a})

-- | Type of creative rotation. Can be used to specify whether to use
-- sequential or random rotation.
crType :: Lens' CreativeRotation (Maybe CreativeRotationType)
crType = lens _crType (\ s a -> s{_crType = a})

instance FromJSON CreativeRotation where
        parseJSON
          = withObject "CreativeRotation"
              (\ o ->
                 CreativeRotation <$>
                   (o .:? "weightCalculationStrategy") <*>
                     (o .:? "creativeAssignments" .!= mempty)
                     <*> (o .:? "creativeOptimizationConfigurationId")
                     <*> (o .:? "type"))

instance ToJSON CreativeRotation where
        toJSON CreativeRotation{..}
          = object
              (catMaybes
                 [("weightCalculationStrategy" .=) <$>
                    _crWeightCalculationStrategy,
                  ("creativeAssignments" .=) <$>
                    _crCreativeAssignments,
                  ("creativeOptimizationConfigurationId" .=) <$>
                    _crCreativeOptimizationConfigurationId,
                  ("type" .=) <$> _crType])

-- | Creative Settings
--
-- /See:/ 'creativeSettings' smart constructor.
data CreativeSettings = CreativeSettings
    { _csIFrameHeader :: !(Maybe Text)
    , _csIFrameFooter :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIFrameHeader'
--
-- * 'csIFrameFooter'
creativeSettings
    :: CreativeSettings
creativeSettings =
    CreativeSettings
    { _csIFrameHeader = Nothing
    , _csIFrameFooter = Nothing
    }

-- | Header text for iFrames for this site. Must be less than or equal to
-- 2000 characters long.
csIFrameHeader :: Lens' CreativeSettings (Maybe Text)
csIFrameHeader
  = lens _csIFrameHeader
      (\ s a -> s{_csIFrameHeader = a})

-- | Header text for iFrames for this site. Must be less than or equal to
-- 2000 characters long.
csIFrameFooter :: Lens' CreativeSettings (Maybe Text)
csIFrameFooter
  = lens _csIFrameFooter
      (\ s a -> s{_csIFrameFooter = a})

instance FromJSON CreativeSettings where
        parseJSON
          = withObject "CreativeSettings"
              (\ o ->
                 CreativeSettings <$>
                   (o .:? "iFrameHeader") <*> (o .:? "iFrameFooter"))

instance ToJSON CreativeSettings where
        toJSON CreativeSettings{..}
          = object
              (catMaybes
                 [("iFrameHeader" .=) <$> _csIFrameHeader,
                  ("iFrameFooter" .=) <$> _csIFrameFooter])

-- | Creative List Response
--
-- /See:/ 'creativesListResponse' smart constructor.
data CreativesListResponse = CreativesListResponse
    { _crerNextPageToken :: !(Maybe Text)
    , _crerKind          :: !Text
    , _crerCreatives     :: !(Maybe [Maybe Creative])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crerNextPageToken'
--
-- * 'crerKind'
--
-- * 'crerCreatives'
creativesListResponse
    :: CreativesListResponse
creativesListResponse =
    CreativesListResponse
    { _crerNextPageToken = Nothing
    , _crerKind = "dfareporting#creativesListResponse"
    , _crerCreatives = Nothing
    }

-- | Pagination token to be used for the next list operation.
crerNextPageToken :: Lens' CreativesListResponse (Maybe Text)
crerNextPageToken
  = lens _crerNextPageToken
      (\ s a -> s{_crerNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#creativesListResponse\".
crerKind :: Lens' CreativesListResponse Text
crerKind = lens _crerKind (\ s a -> s{_crerKind = a})

-- | Creative collection.
crerCreatives :: Lens' CreativesListResponse [Maybe Creative]
crerCreatives
  = lens _crerCreatives
      (\ s a -> s{_crerCreatives = a})
      . _Default
      . _Coerce

instance FromJSON CreativesListResponse where
        parseJSON
          = withObject "CreativesListResponse"
              (\ o ->
                 CreativesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#creativesListResponse")
                     <*> (o .:? "creatives" .!= mempty))

instance ToJSON CreativesListResponse where
        toJSON CreativesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _crerNextPageToken,
                  Just ("kind" .= _crerKind),
                  ("creatives" .=) <$> _crerCreatives])

-- | Represents fields that are compatible to be selected for a report of
-- type \"CROSS_DIMENSION_REACH\".
--
-- /See:/ 'crossDimensionReachReportCompatibleFields' smart constructor.
data CrossDimensionReachReportCompatibleFields = CrossDimensionReachReportCompatibleFields
    { _cdrrcfMetrics          :: !(Maybe [Maybe Metric])
    , _cdrrcfBreakdown        :: !(Maybe [Maybe Dimension])
    , _cdrrcfKind             :: !Text
    , _cdrrcfDimensionFilters :: !(Maybe [Maybe Dimension])
    , _cdrrcfOverlapMetrics   :: !(Maybe [Maybe Metric])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CrossDimensionReachReportCompatibleFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrcfMetrics'
--
-- * 'cdrrcfBreakdown'
--
-- * 'cdrrcfKind'
--
-- * 'cdrrcfDimensionFilters'
--
-- * 'cdrrcfOverlapMetrics'
crossDimensionReachReportCompatibleFields
    :: CrossDimensionReachReportCompatibleFields
crossDimensionReachReportCompatibleFields =
    CrossDimensionReachReportCompatibleFields
    { _cdrrcfMetrics = Nothing
    , _cdrrcfBreakdown = Nothing
    , _cdrrcfKind = "dfareporting#crossDimensionReachReportCompatibleFields"
    , _cdrrcfDimensionFilters = Nothing
    , _cdrrcfOverlapMetrics = Nothing
    }

-- | Metrics which are compatible to be selected in the \"metricNames\"
-- section of the report.
cdrrcfMetrics :: Lens' CrossDimensionReachReportCompatibleFields [Maybe Metric]
cdrrcfMetrics
  = lens _cdrrcfMetrics
      (\ s a -> s{_cdrrcfMetrics = a})
      . _Default
      . _Coerce

-- | Dimensions which are compatible to be selected in the \"breakdown\"
-- section of the report.
cdrrcfBreakdown :: Lens' CrossDimensionReachReportCompatibleFields [Maybe Dimension]
cdrrcfBreakdown
  = lens _cdrrcfBreakdown
      (\ s a -> s{_cdrrcfBreakdown = a})
      . _Default
      . _Coerce

-- | The kind of resource this is, in this case
-- dfareporting#crossDimensionReachReportCompatibleFields.
cdrrcfKind :: Lens' CrossDimensionReachReportCompatibleFields Text
cdrrcfKind
  = lens _cdrrcfKind (\ s a -> s{_cdrrcfKind = a})

-- | Dimensions which are compatible to be selected in the
-- \"dimensionFilters\" section of the report.
cdrrcfDimensionFilters :: Lens' CrossDimensionReachReportCompatibleFields [Maybe Dimension]
cdrrcfDimensionFilters
  = lens _cdrrcfDimensionFilters
      (\ s a -> s{_cdrrcfDimensionFilters = a})
      . _Default
      . _Coerce

-- | Metrics which are compatible to be selected in the
-- \"overlapMetricNames\" section of the report.
cdrrcfOverlapMetrics :: Lens' CrossDimensionReachReportCompatibleFields [Maybe Metric]
cdrrcfOverlapMetrics
  = lens _cdrrcfOverlapMetrics
      (\ s a -> s{_cdrrcfOverlapMetrics = a})
      . _Default
      . _Coerce

instance FromJSON
         CrossDimensionReachReportCompatibleFields where
        parseJSON
          = withObject
              "CrossDimensionReachReportCompatibleFields"
              (\ o ->
                 CrossDimensionReachReportCompatibleFields <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "breakdown" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#crossDimensionReachReportCompatibleFields")
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "overlapMetrics" .!= mempty))

instance ToJSON
         CrossDimensionReachReportCompatibleFields where
        toJSON CrossDimensionReachReportCompatibleFields{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _cdrrcfMetrics,
                  ("breakdown" .=) <$> _cdrrcfBreakdown,
                  Just ("kind" .= _cdrrcfKind),
                  ("dimensionFilters" .=) <$> _cdrrcfDimensionFilters,
                  ("overlapMetrics" .=) <$> _cdrrcfOverlapMetrics])

-- | Represents a Custom Rich Media Events group.
--
-- /See:/ 'customRichMediaEvents' smart constructor.
data CustomRichMediaEvents = CustomRichMediaEvents
    { _crmeKind             :: !Text
    , _crmeFilteredEventIds :: !(Maybe [Maybe DimensionValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomRichMediaEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crmeKind'
--
-- * 'crmeFilteredEventIds'
customRichMediaEvents
    :: CustomRichMediaEvents
customRichMediaEvents =
    CustomRichMediaEvents
    { _crmeKind = "dfareporting#customRichMediaEvents"
    , _crmeFilteredEventIds = Nothing
    }

-- | The kind of resource this is, in this case
-- dfareporting#customRichMediaEvents.
crmeKind :: Lens' CustomRichMediaEvents Text
crmeKind = lens _crmeKind (\ s a -> s{_crmeKind = a})

-- | List of custom rich media event IDs. Dimension values must be all of
-- type dfa:richMediaEventTypeIdAndName.
crmeFilteredEventIds :: Lens' CustomRichMediaEvents [Maybe DimensionValue]
crmeFilteredEventIds
  = lens _crmeFilteredEventIds
      (\ s a -> s{_crmeFilteredEventIds = a})
      . _Default
      . _Coerce

instance FromJSON CustomRichMediaEvents where
        parseJSON
          = withObject "CustomRichMediaEvents"
              (\ o ->
                 CustomRichMediaEvents <$>
                   (o .:? "kind" .!=
                      "dfareporting#customRichMediaEvents")
                     <*> (o .:? "filteredEventIds" .!= mempty))

instance ToJSON CustomRichMediaEvents where
        toJSON CustomRichMediaEvents{..}
          = object
              (catMaybes
                 [Just ("kind" .= _crmeKind),
                  ("filteredEventIds" .=) <$> _crmeFilteredEventIds])

-- | Represents a date range.
--
-- /See:/ 'dateRange' smart constructor.
data DateRange = DateRange
    { _drKind              :: !Text
    , _drEndDate           :: !(Maybe UTCTime)
    , _drStartDate         :: !(Maybe UTCTime)
    , _drRelativeDateRange :: !(Maybe DateRangeRelativeDateRange)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DateRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drKind'
--
-- * 'drEndDate'
--
-- * 'drStartDate'
--
-- * 'drRelativeDateRange'
dateRange
    :: DateRange
dateRange =
    DateRange
    { _drKind = "dfareporting#dateRange"
    , _drEndDate = Nothing
    , _drStartDate = Nothing
    , _drRelativeDateRange = Nothing
    }

-- | The kind of resource this is, in this case dfareporting#dateRange.
drKind :: Lens' DateRange Text
drKind = lens _drKind (\ s a -> s{_drKind = a})

-- | The end date of the date range, inclusive. A string of the format:
-- \"yyyy-MM-dd\".
drEndDate :: Lens' DateRange (Maybe UTCTime)
drEndDate
  = lens _drEndDate (\ s a -> s{_drEndDate = a})

-- | The start date of the date range, inclusive. A string of the format:
-- \"yyyy-MM-dd\".
drStartDate :: Lens' DateRange (Maybe UTCTime)
drStartDate
  = lens _drStartDate (\ s a -> s{_drStartDate = a})

-- | The date range relative to the date of when the report is run.
drRelativeDateRange :: Lens' DateRange (Maybe DateRangeRelativeDateRange)
drRelativeDateRange
  = lens _drRelativeDateRange
      (\ s a -> s{_drRelativeDateRange = a})

instance FromJSON DateRange where
        parseJSON
          = withObject "DateRange"
              (\ o ->
                 DateRange <$>
                   (o .:? "kind" .!= "dfareporting#dateRange") <*>
                     (o .:? "endDate")
                     <*> (o .:? "startDate")
                     <*> (o .:? "relativeDateRange"))

instance ToJSON DateRange where
        toJSON DateRange{..}
          = object
              (catMaybes
                 [Just ("kind" .= _drKind),
                  ("endDate" .=) <$> _drEndDate,
                  ("startDate" .=) <$> _drStartDate,
                  ("relativeDateRange" .=) <$> _drRelativeDateRange])

-- | Day Part Targeting.
--
-- /See:/ 'dayPartTargeting' smart constructor.
data DayPartTargeting = DayPartTargeting
    { _dptDaysOfWeek    :: !(Maybe [DayPartTargetingItemDaysOfWeek])
    , _dptHoursOfDay    :: !(Maybe [Int32])
    , _dptUserLocalTime :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DayPartTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dptDaysOfWeek'
--
-- * 'dptHoursOfDay'
--
-- * 'dptUserLocalTime'
dayPartTargeting
    :: DayPartTargeting
dayPartTargeting =
    DayPartTargeting
    { _dptDaysOfWeek = Nothing
    , _dptHoursOfDay = Nothing
    , _dptUserLocalTime = Nothing
    }

-- | Days of the week when the ad will serve. Acceptable values are: -
-- \"SUNDAY\" - \"MONDAY\" - \"TUESDAY\" - \"WEDNESDAY\" - \"THURSDAY\" -
-- \"FRIDAY\" - \"SATURDAY\"
dptDaysOfWeek :: Lens' DayPartTargeting [DayPartTargetingItemDaysOfWeek]
dptDaysOfWeek
  = lens _dptDaysOfWeek
      (\ s a -> s{_dptDaysOfWeek = a})
      . _Default
      . _Coerce

-- | Hours of the day when the ad will serve. Must be an integer between 0
-- and 23 (inclusive), where 0 is midnight to 1 AM, and 23 is 11 PM to
-- midnight. Can be specified with days of week, in which case the ad would
-- serve during these hours on the specified days. For example, if Monday,
-- Wednesday, Friday are the days of week specified and 9-10am, 3-5pm
-- (hours 9, 15, and 16) is specified, the ad would serve Monday,
-- Wednesdays, and Fridays at 9-10am and 3-5pm.
dptHoursOfDay :: Lens' DayPartTargeting [Int32]
dptHoursOfDay
  = lens _dptHoursOfDay
      (\ s a -> s{_dptHoursOfDay = a})
      . _Default
      . _Coerce

-- | Whether or not to use the user\'s local time. If false, the America\/New
-- York time zone applies.
dptUserLocalTime :: Lens' DayPartTargeting (Maybe Bool)
dptUserLocalTime
  = lens _dptUserLocalTime
      (\ s a -> s{_dptUserLocalTime = a})

instance FromJSON DayPartTargeting where
        parseJSON
          = withObject "DayPartTargeting"
              (\ o ->
                 DayPartTargeting <$>
                   (o .:? "daysOfWeek" .!= mempty) <*>
                     (o .:? "hoursOfDay" .!= mempty)
                     <*> (o .:? "userLocalTime"))

instance ToJSON DayPartTargeting where
        toJSON DayPartTargeting{..}
          = object
              (catMaybes
                 [("daysOfWeek" .=) <$> _dptDaysOfWeek,
                  ("hoursOfDay" .=) <$> _dptHoursOfDay,
                  ("userLocalTime" .=) <$> _dptUserLocalTime])

-- | Properties of inheriting and overriding the default click-through event
-- tag. A campaign may override the event tag defined at the advertiser
-- level, and an ad may also override the campaign\'s setting further.
--
-- /See:/ 'defaultClickThroughEventTagProperties' smart constructor.
data DefaultClickThroughEventTagProperties = DefaultClickThroughEventTagProperties
    { _dctetpOverrideInheritedEventTag     :: !(Maybe Bool)
    , _dctetpDefaultClickThroughEventTagId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultClickThroughEventTagProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dctetpOverrideInheritedEventTag'
--
-- * 'dctetpDefaultClickThroughEventTagId'
defaultClickThroughEventTagProperties
    :: DefaultClickThroughEventTagProperties
defaultClickThroughEventTagProperties =
    DefaultClickThroughEventTagProperties
    { _dctetpOverrideInheritedEventTag = Nothing
    , _dctetpDefaultClickThroughEventTagId = Nothing
    }

-- | Whether this entity should override the inherited default click-through
-- event tag with its own defined value.
dctetpOverrideInheritedEventTag :: Lens' DefaultClickThroughEventTagProperties (Maybe Bool)
dctetpOverrideInheritedEventTag
  = lens _dctetpOverrideInheritedEventTag
      (\ s a -> s{_dctetpOverrideInheritedEventTag = a})

-- | ID of the click-through event tag to apply to all ads in this entity\'s
-- scope.
dctetpDefaultClickThroughEventTagId :: Lens' DefaultClickThroughEventTagProperties (Maybe Int64)
dctetpDefaultClickThroughEventTagId
  = lens _dctetpDefaultClickThroughEventTagId
      (\ s a ->
         s{_dctetpDefaultClickThroughEventTagId = a})

instance FromJSON
         DefaultClickThroughEventTagProperties where
        parseJSON
          = withObject "DefaultClickThroughEventTagProperties"
              (\ o ->
                 DefaultClickThroughEventTagProperties <$>
                   (o .:? "overrideInheritedEventTag") <*>
                     (o .:? "defaultClickThroughEventTagId"))

instance ToJSON DefaultClickThroughEventTagProperties
         where
        toJSON DefaultClickThroughEventTagProperties{..}
          = object
              (catMaybes
                 [("overrideInheritedEventTag" .=) <$>
                    _dctetpOverrideInheritedEventTag,
                  ("defaultClickThroughEventTagId" .=) <$>
                    _dctetpDefaultClickThroughEventTagId])

-- | Delivery Schedule.
--
-- /See:/ 'deliverySchedule' smart constructor.
data DeliverySchedule = DeliverySchedule
    { _dsHardCutoff      :: !(Maybe Bool)
    , _dsPriority        :: !(Maybe DeliverySchedulePriority)
    , _dsImpressionRatio :: !(Maybe Int64)
    , _dsFrequencyCap    :: !(Maybe (Maybe FrequencyCap))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeliverySchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsHardCutoff'
--
-- * 'dsPriority'
--
-- * 'dsImpressionRatio'
--
-- * 'dsFrequencyCap'
deliverySchedule
    :: DeliverySchedule
deliverySchedule =
    DeliverySchedule
    { _dsHardCutoff = Nothing
    , _dsPriority = Nothing
    , _dsImpressionRatio = Nothing
    , _dsFrequencyCap = Nothing
    }

-- | Whether or not hard cutoff is enabled. If true, the ad will not serve
-- after the end date and time. Otherwise the ad will continue to be served
-- until it has reached its delivery goals.
dsHardCutoff :: Lens' DeliverySchedule (Maybe Bool)
dsHardCutoff
  = lens _dsHardCutoff (\ s a -> s{_dsHardCutoff = a})

-- | Serving priority of an ad, with respect to other ads. The lower the
-- priority number, the greater the priority with which it is served.
dsPriority :: Lens' DeliverySchedule (Maybe DeliverySchedulePriority)
dsPriority
  = lens _dsPriority (\ s a -> s{_dsPriority = a})

-- | Impression ratio for this ad. This ratio determines how often each ad is
-- served relative to the others. For example, if ad A has an impression
-- ratio of 1 and ad B has an impression ratio of 3, then DCM will serve ad
-- B three times as often as ad A. Must be between 1 and 10.
dsImpressionRatio :: Lens' DeliverySchedule (Maybe Int64)
dsImpressionRatio
  = lens _dsImpressionRatio
      (\ s a -> s{_dsImpressionRatio = a})

-- | Limit on the number of times an individual user can be served the ad
-- within a specified period of time.
dsFrequencyCap :: Lens' DeliverySchedule (Maybe (Maybe FrequencyCap))
dsFrequencyCap
  = lens _dsFrequencyCap
      (\ s a -> s{_dsFrequencyCap = a})

instance FromJSON DeliverySchedule where
        parseJSON
          = withObject "DeliverySchedule"
              (\ o ->
                 DeliverySchedule <$>
                   (o .:? "hardCutoff") <*> (o .:? "priority") <*>
                     (o .:? "impressionRatio")
                     <*> (o .:? "frequencyCap"))

instance ToJSON DeliverySchedule where
        toJSON DeliverySchedule{..}
          = object
              (catMaybes
                 [("hardCutoff" .=) <$> _dsHardCutoff,
                  ("priority" .=) <$> _dsPriority,
                  ("impressionRatio" .=) <$> _dsImpressionRatio,
                  ("frequencyCap" .=) <$> _dsFrequencyCap])

-- | DFP Settings
--
-- /See:/ 'dfpSettings' smart constructor.
data DfpSettings = DfpSettings
    { _dsPubPaidPlacementAccepted      :: !(Maybe Bool)
    , _dsDfpNetworkName                :: !(Maybe Text)
    , _dsPublisherPortalOnly           :: !(Maybe Bool)
    , _dsProgrammaticPlacementAccepted :: !(Maybe Bool)
    , _dsDfpNetworkCode                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DfpSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsPubPaidPlacementAccepted'
--
-- * 'dsDfpNetworkName'
--
-- * 'dsPublisherPortalOnly'
--
-- * 'dsProgrammaticPlacementAccepted'
--
-- * 'dsDfpNetworkCode'
dfpSettings
    :: DfpSettings
dfpSettings =
    DfpSettings
    { _dsPubPaidPlacementAccepted = Nothing
    , _dsDfpNetworkName = Nothing
    , _dsPublisherPortalOnly = Nothing
    , _dsProgrammaticPlacementAccepted = Nothing
    , _dsDfpNetworkCode = Nothing
    }

-- | Whether this directory site accepts publisher-paid tags.
dsPubPaidPlacementAccepted :: Lens' DfpSettings (Maybe Bool)
dsPubPaidPlacementAccepted
  = lens _dsPubPaidPlacementAccepted
      (\ s a -> s{_dsPubPaidPlacementAccepted = a})

-- | DFP network name for this directory site.
dsDfpNetworkName :: Lens' DfpSettings (Maybe Text)
dsDfpNetworkName
  = lens _dsDfpNetworkName
      (\ s a -> s{_dsDfpNetworkName = a})

-- | Whether this directory site is available only via DoubleClick Publisher
-- Portal.
dsPublisherPortalOnly :: Lens' DfpSettings (Maybe Bool)
dsPublisherPortalOnly
  = lens _dsPublisherPortalOnly
      (\ s a -> s{_dsPublisherPortalOnly = a})

-- | Whether this directory site accepts programmatic placements.
dsProgrammaticPlacementAccepted :: Lens' DfpSettings (Maybe Bool)
dsProgrammaticPlacementAccepted
  = lens _dsProgrammaticPlacementAccepted
      (\ s a -> s{_dsProgrammaticPlacementAccepted = a})

-- | DFP network code for this directory site.
dsDfpNetworkCode :: Lens' DfpSettings (Maybe Text)
dsDfpNetworkCode
  = lens _dsDfpNetworkCode
      (\ s a -> s{_dsDfpNetworkCode = a})

instance FromJSON DfpSettings where
        parseJSON
          = withObject "DfpSettings"
              (\ o ->
                 DfpSettings <$>
                   (o .:? "pubPaidPlacementAccepted") <*>
                     (o .:? "dfp_network_name")
                     <*> (o .:? "publisherPortalOnly")
                     <*> (o .:? "programmaticPlacementAccepted")
                     <*> (o .:? "dfp_network_code"))

instance ToJSON DfpSettings where
        toJSON DfpSettings{..}
          = object
              (catMaybes
                 [("pubPaidPlacementAccepted" .=) <$>
                    _dsPubPaidPlacementAccepted,
                  ("dfp_network_name" .=) <$> _dsDfpNetworkName,
                  ("publisherPortalOnly" .=) <$>
                    _dsPublisherPortalOnly,
                  ("programmaticPlacementAccepted" .=) <$>
                    _dsProgrammaticPlacementAccepted,
                  ("dfp_network_code" .=) <$> _dsDfpNetworkCode])

-- | Represents a dimension.
--
-- /See:/ 'dimension' smart constructor.
data Dimension = Dimension
    { _dKind :: !Text
    , _dName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dName'
dimension
    :: Dimension
dimension =
    Dimension
    { _dKind = "dfareporting#dimension"
    , _dName = Nothing
    }

-- | The kind of resource this is, in this case dfareporting#dimension.
dKind :: Lens' Dimension Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | The dimension name, e.g. dfa:advertiser
dName :: Lens' Dimension (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

instance FromJSON Dimension where
        parseJSON
          = withObject "Dimension"
              (\ o ->
                 Dimension <$>
                   (o .:? "kind" .!= "dfareporting#dimension") <*>
                     (o .:? "name"))

instance ToJSON Dimension where
        toJSON Dimension{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dKind), ("name" .=) <$> _dName])

-- | Represents a dimension filter.
--
-- /See:/ 'dimensionFilter' smart constructor.
data DimensionFilter = DimensionFilter
    { _dfKind          :: !Text
    , _dfValue         :: !(Maybe Text)
    , _dfDimensionName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfKind'
--
-- * 'dfValue'
--
-- * 'dfDimensionName'
dimensionFilter
    :: DimensionFilter
dimensionFilter =
    DimensionFilter
    { _dfKind = "dfareporting#dimensionFilter"
    , _dfValue = Nothing
    , _dfDimensionName = Nothing
    }

-- | The kind of resource this is, in this case dfareporting#dimensionFilter.
dfKind :: Lens' DimensionFilter Text
dfKind = lens _dfKind (\ s a -> s{_dfKind = a})

-- | The value of the dimension to filter.
dfValue :: Lens' DimensionFilter (Maybe Text)
dfValue = lens _dfValue (\ s a -> s{_dfValue = a})

-- | The name of the dimension to filter.
dfDimensionName :: Lens' DimensionFilter (Maybe Text)
dfDimensionName
  = lens _dfDimensionName
      (\ s a -> s{_dfDimensionName = a})

instance FromJSON DimensionFilter where
        parseJSON
          = withObject "DimensionFilter"
              (\ o ->
                 DimensionFilter <$>
                   (o .:? "kind" .!= "dfareporting#dimensionFilter") <*>
                     (o .:? "value")
                     <*> (o .:? "dimensionName"))

instance ToJSON DimensionFilter where
        toJSON DimensionFilter{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dfKind), ("value" .=) <$> _dfValue,
                  ("dimensionName" .=) <$> _dfDimensionName])

-- | Represents a DimensionValue resource.
--
-- /See:/ 'dimensionValue' smart constructor.
data DimensionValue = DimensionValue
    { _dvEtag          :: !(Maybe Text)
    , _dvKind          :: !Text
    , _dvValue         :: !(Maybe Text)
    , _dvMatchType     :: !(Maybe DimensionValueMatchType)
    , _dvDimensionName :: !(Maybe Text)
    , _dvId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvEtag'
--
-- * 'dvKind'
--
-- * 'dvValue'
--
-- * 'dvMatchType'
--
-- * 'dvDimensionName'
--
-- * 'dvId'
dimensionValue
    :: DimensionValue
dimensionValue =
    DimensionValue
    { _dvEtag = Nothing
    , _dvKind = "dfareporting#dimensionValue"
    , _dvValue = Nothing
    , _dvMatchType = Nothing
    , _dvDimensionName = Nothing
    , _dvId = Nothing
    }

-- | The eTag of this response for caching purposes.
dvEtag :: Lens' DimensionValue (Maybe Text)
dvEtag = lens _dvEtag (\ s a -> s{_dvEtag = a})

-- | The kind of resource this is, in this case dfareporting#dimensionValue.
dvKind :: Lens' DimensionValue Text
dvKind = lens _dvKind (\ s a -> s{_dvKind = a})

-- | The value of the dimension.
dvValue :: Lens' DimensionValue (Maybe Text)
dvValue = lens _dvValue (\ s a -> s{_dvValue = a})

-- | Determines how the \'value\' field is matched when filtering. If not
-- specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'*\' is
-- allowed as a placeholder for variable length character sequences, and it
-- can be escaped with a backslash. Note, only paid search dimensions
-- (\'dfa:paidSearch*\') allow a matchType other than EXACT.
dvMatchType :: Lens' DimensionValue (Maybe DimensionValueMatchType)
dvMatchType
  = lens _dvMatchType (\ s a -> s{_dvMatchType = a})

-- | The name of the dimension.
dvDimensionName :: Lens' DimensionValue (Maybe Text)
dvDimensionName
  = lens _dvDimensionName
      (\ s a -> s{_dvDimensionName = a})

-- | The ID associated with the value if available.
dvId :: Lens' DimensionValue (Maybe Text)
dvId = lens _dvId (\ s a -> s{_dvId = a})

instance FromJSON DimensionValue where
        parseJSON
          = withObject "DimensionValue"
              (\ o ->
                 DimensionValue <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "dfareporting#dimensionValue")
                     <*> (o .:? "value")
                     <*> (o .:? "matchType")
                     <*> (o .:? "dimensionName")
                     <*> (o .:? "id"))

instance ToJSON DimensionValue where
        toJSON DimensionValue{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _dvEtag, Just ("kind" .= _dvKind),
                  ("value" .=) <$> _dvValue,
                  ("matchType" .=) <$> _dvMatchType,
                  ("dimensionName" .=) <$> _dvDimensionName,
                  ("id" .=) <$> _dvId])

-- | Represents the list of DimensionValue resources.
--
-- /See:/ 'dimensionValueList' smart constructor.
data DimensionValueList = DimensionValueList
    { _dvlEtag          :: !(Maybe Text)
    , _dvlNextPageToken :: !(Maybe Text)
    , _dvlKind          :: !Text
    , _dvlItems         :: !(Maybe [Maybe DimensionValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionValueList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvlEtag'
--
-- * 'dvlNextPageToken'
--
-- * 'dvlKind'
--
-- * 'dvlItems'
dimensionValueList
    :: DimensionValueList
dimensionValueList =
    DimensionValueList
    { _dvlEtag = Nothing
    , _dvlNextPageToken = Nothing
    , _dvlKind = "dfareporting#dimensionValueList"
    , _dvlItems = Nothing
    }

-- | The eTag of this response for caching purposes.
dvlEtag :: Lens' DimensionValueList (Maybe Text)
dvlEtag = lens _dvlEtag (\ s a -> s{_dvlEtag = a})

-- | Continuation token used to page through dimension values. To retrieve
-- the next page of results, set the next request\'s \"pageToken\" to the
-- value of this field. The page token is only valid for a limited amount
-- of time and should not be persisted.
dvlNextPageToken :: Lens' DimensionValueList (Maybe Text)
dvlNextPageToken
  = lens _dvlNextPageToken
      (\ s a -> s{_dvlNextPageToken = a})

-- | The kind of list this is, in this case dfareporting#dimensionValueList.
dvlKind :: Lens' DimensionValueList Text
dvlKind = lens _dvlKind (\ s a -> s{_dvlKind = a})

-- | The dimension values returned in this response.
dvlItems :: Lens' DimensionValueList [Maybe DimensionValue]
dvlItems
  = lens _dvlItems (\ s a -> s{_dvlItems = a}) .
      _Default
      . _Coerce

instance FromJSON DimensionValueList where
        parseJSON
          = withObject "DimensionValueList"
              (\ o ->
                 DimensionValueList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dfareporting#dimensionValueList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON DimensionValueList where
        toJSON DimensionValueList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _dvlEtag,
                  ("nextPageToken" .=) <$> _dvlNextPageToken,
                  Just ("kind" .= _dvlKind),
                  ("items" .=) <$> _dvlItems])

-- | Represents a DimensionValuesRequest.
--
-- /See:/ 'dimensionValueRequest' smart constructor.
data DimensionValueRequest = DimensionValueRequest
    { _dvrKind          :: !Text
    , _dvrEndDate       :: !(Maybe UTCTime)
    , _dvrFilters       :: !(Maybe [Maybe DimensionFilter])
    , _dvrStartDate     :: !(Maybe UTCTime)
    , _dvrDimensionName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionValueRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvrKind'
--
-- * 'dvrEndDate'
--
-- * 'dvrFilters'
--
-- * 'dvrStartDate'
--
-- * 'dvrDimensionName'
dimensionValueRequest
    :: DimensionValueRequest
dimensionValueRequest =
    DimensionValueRequest
    { _dvrKind = "dfareporting#dimensionValueRequest"
    , _dvrEndDate = Nothing
    , _dvrFilters = Nothing
    , _dvrStartDate = Nothing
    , _dvrDimensionName = Nothing
    }

-- | The kind of request this is, in this case
-- dfareporting#dimensionValueRequest.
dvrKind :: Lens' DimensionValueRequest Text
dvrKind = lens _dvrKind (\ s a -> s{_dvrKind = a})

-- | The end date of the date range for which to retrieve dimension values. A
-- string of the format \"yyyy-MM-dd\".
dvrEndDate :: Lens' DimensionValueRequest (Maybe UTCTime)
dvrEndDate
  = lens _dvrEndDate (\ s a -> s{_dvrEndDate = a})

-- | The list of filters by which to filter values. The filters are ANDed.
dvrFilters :: Lens' DimensionValueRequest [Maybe DimensionFilter]
dvrFilters
  = lens _dvrFilters (\ s a -> s{_dvrFilters = a}) .
      _Default
      . _Coerce

-- | The start date of the date range for which to retrieve dimension values.
-- A string of the format \"yyyy-MM-dd\".
dvrStartDate :: Lens' DimensionValueRequest (Maybe UTCTime)
dvrStartDate
  = lens _dvrStartDate (\ s a -> s{_dvrStartDate = a})

-- | The name of the dimension for which values should be requested.
dvrDimensionName :: Lens' DimensionValueRequest (Maybe Text)
dvrDimensionName
  = lens _dvrDimensionName
      (\ s a -> s{_dvrDimensionName = a})

instance FromJSON DimensionValueRequest where
        parseJSON
          = withObject "DimensionValueRequest"
              (\ o ->
                 DimensionValueRequest <$>
                   (o .:? "kind" .!=
                      "dfareporting#dimensionValueRequest")
                     <*> (o .:? "endDate")
                     <*> (o .:? "filters" .!= mempty)
                     <*> (o .:? "startDate")
                     <*> (o .:? "dimensionName"))

instance ToJSON DimensionValueRequest where
        toJSON DimensionValueRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dvrKind),
                  ("endDate" .=) <$> _dvrEndDate,
                  ("filters" .=) <$> _dvrFilters,
                  ("startDate" .=) <$> _dvrStartDate,
                  ("dimensionName" .=) <$> _dvrDimensionName])

-- | DirectorySites contains properties of a website from the Site Directory.
-- Sites need to be added to an account via the Sites resource before they
-- can be assigned to a placement.
--
-- /See:/ 'directorySite' smart constructor.
data DirectorySite = DirectorySite
    { _dsCurrencyId             :: !(Maybe Int64)
    , _dsSettings               :: !(Maybe (Maybe DirectorySiteSettings))
    , _dsInterstitialTagFormats :: !(Maybe [DirectorySiteItemInterstitialTagFormats])
    , _dsKind                   :: !Text
    , _dsUrl                    :: !(Maybe Text)
    , _dsIdDimensionValue       :: !(Maybe (Maybe DimensionValue))
    , _dsInpageTagFormats       :: !(Maybe [DirectorySiteItemInpageTagFormats])
    , _dsActive                 :: !(Maybe Bool)
    , _dsName                   :: !(Maybe Text)
    , _dsId                     :: !(Maybe Int64)
    , _dsCountryId              :: !(Maybe Int64)
    , _dsContactAssignments     :: !(Maybe [Maybe DirectorySiteContactAssignment])
    , _dsDescription            :: !(Maybe Text)
    , _dsParentId               :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsCurrencyId'
--
-- * 'dsSettings'
--
-- * 'dsInterstitialTagFormats'
--
-- * 'dsKind'
--
-- * 'dsUrl'
--
-- * 'dsIdDimensionValue'
--
-- * 'dsInpageTagFormats'
--
-- * 'dsActive'
--
-- * 'dsName'
--
-- * 'dsId'
--
-- * 'dsCountryId'
--
-- * 'dsContactAssignments'
--
-- * 'dsDescription'
--
-- * 'dsParentId'
directorySite
    :: DirectorySite
directorySite =
    DirectorySite
    { _dsCurrencyId = Nothing
    , _dsSettings = Nothing
    , _dsInterstitialTagFormats = Nothing
    , _dsKind = "dfareporting#directorySite"
    , _dsUrl = Nothing
    , _dsIdDimensionValue = Nothing
    , _dsInpageTagFormats = Nothing
    , _dsActive = Nothing
    , _dsName = Nothing
    , _dsId = Nothing
    , _dsCountryId = Nothing
    , _dsContactAssignments = Nothing
    , _dsDescription = Nothing
    , _dsParentId = Nothing
    }

-- | Currency ID of this directory site. Possible values are: - \"1\" for USD
-- - \"2\" for GBP - \"3\" for ESP - \"4\" for SEK - \"5\" for CAD - \"6\"
-- for JPY - \"7\" for DEM - \"8\" for AUD - \"9\" for FRF - \"10\" for ITL
-- - \"11\" for DKK - \"12\" for NOK - \"13\" for FIM - \"14\" for ZAR -
-- \"15\" for IEP - \"16\" for NLG - \"17\" for EUR - \"18\" for KRW -
-- \"19\" for TWD - \"20\" for SGD - \"21\" for CNY - \"22\" for HKD -
-- \"23\" for NZD - \"24\" for MYR - \"25\" for BRL - \"26\" for PTE -
-- \"27\" for MXP - \"28\" for CLP - \"29\" for TRY - \"30\" for ARS -
-- \"31\" for PEN - \"32\" for ILS - \"33\" for CHF - \"34\" for VEF -
-- \"35\" for COP - \"36\" for GTQ
dsCurrencyId :: Lens' DirectorySite (Maybe Int64)
dsCurrencyId
  = lens _dsCurrencyId (\ s a -> s{_dsCurrencyId = a})

-- | Directory site settings.
dsSettings :: Lens' DirectorySite (Maybe (Maybe DirectorySiteSettings))
dsSettings
  = lens _dsSettings (\ s a -> s{_dsSettings = a})

-- | Tag types for interstitial placements. Acceptable values are: -
-- \"IFRAME_JAVASCRIPT_INTERSTITIAL\" - \"INTERNAL_REDIRECT_INTERSTITIAL\"
-- - \"JAVASCRIPT_INTERSTITIAL\"
dsInterstitialTagFormats :: Lens' DirectorySite [DirectorySiteItemInterstitialTagFormats]
dsInterstitialTagFormats
  = lens _dsInterstitialTagFormats
      (\ s a -> s{_dsInterstitialTagFormats = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#directorySite\".
dsKind :: Lens' DirectorySite Text
dsKind = lens _dsKind (\ s a -> s{_dsKind = a})

-- | URL of this directory site.
dsUrl :: Lens' DirectorySite (Maybe Text)
dsUrl = lens _dsUrl (\ s a -> s{_dsUrl = a})

-- | Dimension value for the ID of this directory site. This is a read-only,
-- auto-generated field.
dsIdDimensionValue :: Lens' DirectorySite (Maybe (Maybe DimensionValue))
dsIdDimensionValue
  = lens _dsIdDimensionValue
      (\ s a -> s{_dsIdDimensionValue = a})

-- | Tag types for regular placements. Acceptable values are: - \"STANDARD\"
-- - \"IFRAME_JAVASCRIPT_INPAGE\" - \"INTERNAL_REDIRECT_INPAGE\" -
-- \"JAVASCRIPT_INPAGE\"
dsInpageTagFormats :: Lens' DirectorySite [DirectorySiteItemInpageTagFormats]
dsInpageTagFormats
  = lens _dsInpageTagFormats
      (\ s a -> s{_dsInpageTagFormats = a})
      . _Default
      . _Coerce

-- | Whether this directory site is active.
dsActive :: Lens' DirectorySite (Maybe Bool)
dsActive = lens _dsActive (\ s a -> s{_dsActive = a})

-- | Name of this directory site.
dsName :: Lens' DirectorySite (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | ID of this directory site. This is a read-only, auto-generated field.
dsId :: Lens' DirectorySite (Maybe Int64)
dsId = lens _dsId (\ s a -> s{_dsId = a})

-- | Country ID of this directory site.
dsCountryId :: Lens' DirectorySite (Maybe Int64)
dsCountryId
  = lens _dsCountryId (\ s a -> s{_dsCountryId = a})

-- | Directory site contacts.
dsContactAssignments :: Lens' DirectorySite [Maybe DirectorySiteContactAssignment]
dsContactAssignments
  = lens _dsContactAssignments
      (\ s a -> s{_dsContactAssignments = a})
      . _Default
      . _Coerce

-- | Description of this directory site.
dsDescription :: Lens' DirectorySite (Maybe Text)
dsDescription
  = lens _dsDescription
      (\ s a -> s{_dsDescription = a})

-- | Parent directory site ID.
dsParentId :: Lens' DirectorySite (Maybe Int64)
dsParentId
  = lens _dsParentId (\ s a -> s{_dsParentId = a})

instance FromJSON DirectorySite where
        parseJSON
          = withObject "DirectorySite"
              (\ o ->
                 DirectorySite <$>
                   (o .:? "currencyId") <*> (o .:? "settings") <*>
                     (o .:? "interstitialTagFormats" .!= mempty)
                     <*> (o .:? "kind" .!= "dfareporting#directorySite")
                     <*> (o .:? "url")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "inpageTagFormats" .!= mempty)
                     <*> (o .:? "active")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "countryId")
                     <*> (o .:? "contactAssignments" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "parentId"))

instance ToJSON DirectorySite where
        toJSON DirectorySite{..}
          = object
              (catMaybes
                 [("currencyId" .=) <$> _dsCurrencyId,
                  ("settings" .=) <$> _dsSettings,
                  ("interstitialTagFormats" .=) <$>
                    _dsInterstitialTagFormats,
                  Just ("kind" .= _dsKind), ("url" .=) <$> _dsUrl,
                  ("idDimensionValue" .=) <$> _dsIdDimensionValue,
                  ("inpageTagFormats" .=) <$> _dsInpageTagFormats,
                  ("active" .=) <$> _dsActive, ("name" .=) <$> _dsName,
                  ("id" .=) <$> _dsId,
                  ("countryId" .=) <$> _dsCountryId,
                  ("contactAssignments" .=) <$> _dsContactAssignments,
                  ("description" .=) <$> _dsDescription,
                  ("parentId" .=) <$> _dsParentId])

-- | Contains properties of a Site Directory contact.
--
-- /See:/ 'directorySiteContact' smart constructor.
data DirectorySiteContact = DirectorySiteContact
    { _dscEmail     :: !(Maybe Text)
    , _dscPhone     :: !(Maybe Text)
    , _dscLastName  :: !(Maybe Text)
    , _dscKind      :: !Text
    , _dscAddress   :: !(Maybe Text)
    , _dscRole      :: !(Maybe DirectorySiteContactRole)
    , _dscFirstName :: !(Maybe Text)
    , _dscId        :: !(Maybe Int64)
    , _dscTitle     :: !(Maybe Text)
    , _dscType      :: !(Maybe DirectorySiteContactType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscEmail'
--
-- * 'dscPhone'
--
-- * 'dscLastName'
--
-- * 'dscKind'
--
-- * 'dscAddress'
--
-- * 'dscRole'
--
-- * 'dscFirstName'
--
-- * 'dscId'
--
-- * 'dscTitle'
--
-- * 'dscType'
directorySiteContact
    :: DirectorySiteContact
directorySiteContact =
    DirectorySiteContact
    { _dscEmail = Nothing
    , _dscPhone = Nothing
    , _dscLastName = Nothing
    , _dscKind = "dfareporting#directorySiteContact"
    , _dscAddress = Nothing
    , _dscRole = Nothing
    , _dscFirstName = Nothing
    , _dscId = Nothing
    , _dscTitle = Nothing
    , _dscType = Nothing
    }

-- | Email address of this directory site contact.
dscEmail :: Lens' DirectorySiteContact (Maybe Text)
dscEmail = lens _dscEmail (\ s a -> s{_dscEmail = a})

-- | Phone number of this directory site contact.
dscPhone :: Lens' DirectorySiteContact (Maybe Text)
dscPhone = lens _dscPhone (\ s a -> s{_dscPhone = a})

-- | Last name of this directory site contact.
dscLastName :: Lens' DirectorySiteContact (Maybe Text)
dscLastName
  = lens _dscLastName (\ s a -> s{_dscLastName = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#directorySiteContact\".
dscKind :: Lens' DirectorySiteContact Text
dscKind = lens _dscKind (\ s a -> s{_dscKind = a})

-- | Address of this directory site contact.
dscAddress :: Lens' DirectorySiteContact (Maybe Text)
dscAddress
  = lens _dscAddress (\ s a -> s{_dscAddress = a})

-- | Directory site contact role.
dscRole :: Lens' DirectorySiteContact (Maybe DirectorySiteContactRole)
dscRole = lens _dscRole (\ s a -> s{_dscRole = a})

-- | First name of this directory site contact.
dscFirstName :: Lens' DirectorySiteContact (Maybe Text)
dscFirstName
  = lens _dscFirstName (\ s a -> s{_dscFirstName = a})

-- | ID of this directory site contact. This is a read-only, auto-generated
-- field.
dscId :: Lens' DirectorySiteContact (Maybe Int64)
dscId = lens _dscId (\ s a -> s{_dscId = a})

-- | Title or designation of this directory site contact.
dscTitle :: Lens' DirectorySiteContact (Maybe Text)
dscTitle = lens _dscTitle (\ s a -> s{_dscTitle = a})

-- | Directory site contact type.
dscType :: Lens' DirectorySiteContact (Maybe DirectorySiteContactType)
dscType = lens _dscType (\ s a -> s{_dscType = a})

instance FromJSON DirectorySiteContact where
        parseJSON
          = withObject "DirectorySiteContact"
              (\ o ->
                 DirectorySiteContact <$>
                   (o .:? "email") <*> (o .:? "phone") <*>
                     (o .:? "lastName")
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#directorySiteContact")
                     <*> (o .:? "address")
                     <*> (o .:? "role")
                     <*> (o .:? "firstName")
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "type"))

instance ToJSON DirectorySiteContact where
        toJSON DirectorySiteContact{..}
          = object
              (catMaybes
                 [("email" .=) <$> _dscEmail,
                  ("phone" .=) <$> _dscPhone,
                  ("lastName" .=) <$> _dscLastName,
                  Just ("kind" .= _dscKind),
                  ("address" .=) <$> _dscAddress,
                  ("role" .=) <$> _dscRole,
                  ("firstName" .=) <$> _dscFirstName,
                  ("id" .=) <$> _dscId, ("title" .=) <$> _dscTitle,
                  ("type" .=) <$> _dscType])

-- | Directory Site Contact Assignment
--
-- /See:/ 'directorySiteContactAssignment' smart constructor.
data DirectorySiteContactAssignment = DirectorySiteContactAssignment
    { _dscaVisibility :: !(Maybe DirectorySiteContactAssignmentVisibility)
    , _dscaContactId  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteContactAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscaVisibility'
--
-- * 'dscaContactId'
directorySiteContactAssignment
    :: DirectorySiteContactAssignment
directorySiteContactAssignment =
    DirectorySiteContactAssignment
    { _dscaVisibility = Nothing
    , _dscaContactId = Nothing
    }

-- | Visibility of this directory site contact assignment. When set to PUBLIC
-- this contact assignment is visible to all account and agency users; when
-- set to PRIVATE it is visible only to the site.
dscaVisibility :: Lens' DirectorySiteContactAssignment (Maybe DirectorySiteContactAssignmentVisibility)
dscaVisibility
  = lens _dscaVisibility
      (\ s a -> s{_dscaVisibility = a})

-- | ID of this directory site contact. This is a read-only, auto-generated
-- field.
dscaContactId :: Lens' DirectorySiteContactAssignment (Maybe Int64)
dscaContactId
  = lens _dscaContactId
      (\ s a -> s{_dscaContactId = a})

instance FromJSON DirectorySiteContactAssignment
         where
        parseJSON
          = withObject "DirectorySiteContactAssignment"
              (\ o ->
                 DirectorySiteContactAssignment <$>
                   (o .:? "visibility") <*> (o .:? "contactId"))

instance ToJSON DirectorySiteContactAssignment where
        toJSON DirectorySiteContactAssignment{..}
          = object
              (catMaybes
                 [("visibility" .=) <$> _dscaVisibility,
                  ("contactId" .=) <$> _dscaContactId])

-- | Directory Site Contact List Response
--
-- /See:/ 'directorySiteContactsListResponse' smart constructor.
data DirectorySiteContactsListResponse = DirectorySiteContactsListResponse
    { _dsclrNextPageToken         :: !(Maybe Text)
    , _dsclrKind                  :: !Text
    , _dsclrDirectorySiteContacts :: !(Maybe [Maybe DirectorySiteContact])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteContactsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsclrNextPageToken'
--
-- * 'dsclrKind'
--
-- * 'dsclrDirectorySiteContacts'
directorySiteContactsListResponse
    :: DirectorySiteContactsListResponse
directorySiteContactsListResponse =
    DirectorySiteContactsListResponse
    { _dsclrNextPageToken = Nothing
    , _dsclrKind = "dfareporting#directorySiteContactsListResponse"
    , _dsclrDirectorySiteContacts = Nothing
    }

-- | Pagination token to be used for the next list operation.
dsclrNextPageToken :: Lens' DirectorySiteContactsListResponse (Maybe Text)
dsclrNextPageToken
  = lens _dsclrNextPageToken
      (\ s a -> s{_dsclrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#directorySiteContactsListResponse\".
dsclrKind :: Lens' DirectorySiteContactsListResponse Text
dsclrKind
  = lens _dsclrKind (\ s a -> s{_dsclrKind = a})

-- | Directory site contact collection
dsclrDirectorySiteContacts :: Lens' DirectorySiteContactsListResponse [Maybe DirectorySiteContact]
dsclrDirectorySiteContacts
  = lens _dsclrDirectorySiteContacts
      (\ s a -> s{_dsclrDirectorySiteContacts = a})
      . _Default
      . _Coerce

instance FromJSON DirectorySiteContactsListResponse
         where
        parseJSON
          = withObject "DirectorySiteContactsListResponse"
              (\ o ->
                 DirectorySiteContactsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#directorySiteContactsListResponse")
                     <*> (o .:? "directorySiteContacts" .!= mempty))

instance ToJSON DirectorySiteContactsListResponse
         where
        toJSON DirectorySiteContactsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dsclrNextPageToken,
                  Just ("kind" .= _dsclrKind),
                  ("directorySiteContacts" .=) <$>
                    _dsclrDirectorySiteContacts])

-- | Directory Site Settings
--
-- /See:/ 'directorySiteSettings' smart constructor.
data DirectorySiteSettings = DirectorySiteSettings
    { _dssInterstitialPlacementAccepted  :: !(Maybe Bool)
    , _dssDfpSettings                    :: !(Maybe (Maybe DfpSettings))
    , _dssVerificationTagOptOut          :: !(Maybe Bool)
    , _dssActiveViewOptOut               :: !(Maybe Bool)
    , _dssVideoActiveViewOptOut          :: !(Maybe Bool)
    , _dssInstreamVideoPlacementAccepted :: !(Maybe Bool)
    , _dssNielsenOcrOptOut               :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssInterstitialPlacementAccepted'
--
-- * 'dssDfpSettings'
--
-- * 'dssVerificationTagOptOut'
--
-- * 'dssActiveViewOptOut'
--
-- * 'dssVideoActiveViewOptOut'
--
-- * 'dssInstreamVideoPlacementAccepted'
--
-- * 'dssNielsenOcrOptOut'
directorySiteSettings
    :: DirectorySiteSettings
directorySiteSettings =
    DirectorySiteSettings
    { _dssInterstitialPlacementAccepted = Nothing
    , _dssDfpSettings = Nothing
    , _dssVerificationTagOptOut = Nothing
    , _dssActiveViewOptOut = Nothing
    , _dssVideoActiveViewOptOut = Nothing
    , _dssInstreamVideoPlacementAccepted = Nothing
    , _dssNielsenOcrOptOut = Nothing
    }

-- | Whether this site accepts interstitial ads.
dssInterstitialPlacementAccepted :: Lens' DirectorySiteSettings (Maybe Bool)
dssInterstitialPlacementAccepted
  = lens _dssInterstitialPlacementAccepted
      (\ s a -> s{_dssInterstitialPlacementAccepted = a})

-- | Directory site DFP settings.
dssDfpSettings :: Lens' DirectorySiteSettings (Maybe (Maybe DfpSettings))
dssDfpSettings
  = lens _dssDfpSettings
      (\ s a -> s{_dssDfpSettings = a})

-- | Whether this directory site has disabled generation of Verification ins
-- tags.
dssVerificationTagOptOut :: Lens' DirectorySiteSettings (Maybe Bool)
dssVerificationTagOptOut
  = lens _dssVerificationTagOptOut
      (\ s a -> s{_dssVerificationTagOptOut = a})

-- | Whether this directory site has disabled active view creatives.
dssActiveViewOptOut :: Lens' DirectorySiteSettings (Maybe Bool)
dssActiveViewOptOut
  = lens _dssActiveViewOptOut
      (\ s a -> s{_dssActiveViewOptOut = a})

-- | Whether this directory site has disabled active view for in-stream video
-- creatives.
dssVideoActiveViewOptOut :: Lens' DirectorySiteSettings (Maybe Bool)
dssVideoActiveViewOptOut
  = lens _dssVideoActiveViewOptOut
      (\ s a -> s{_dssVideoActiveViewOptOut = a})

-- | Whether this site accepts in-stream video ads.
dssInstreamVideoPlacementAccepted :: Lens' DirectorySiteSettings (Maybe Bool)
dssInstreamVideoPlacementAccepted
  = lens _dssInstreamVideoPlacementAccepted
      (\ s a -> s{_dssInstreamVideoPlacementAccepted = a})

-- | Whether this directory site has disabled Nielsen OCR reach ratings.
dssNielsenOcrOptOut :: Lens' DirectorySiteSettings (Maybe Bool)
dssNielsenOcrOptOut
  = lens _dssNielsenOcrOptOut
      (\ s a -> s{_dssNielsenOcrOptOut = a})

instance FromJSON DirectorySiteSettings where
        parseJSON
          = withObject "DirectorySiteSettings"
              (\ o ->
                 DirectorySiteSettings <$>
                   (o .:? "interstitialPlacementAccepted") <*>
                     (o .:? "dfp_settings")
                     <*> (o .:? "verificationTagOptOut")
                     <*> (o .:? "activeViewOptOut")
                     <*> (o .:? "videoActiveViewOptOut")
                     <*> (o .:? "instream_video_placement_accepted")
                     <*> (o .:? "nielsenOcrOptOut"))

instance ToJSON DirectorySiteSettings where
        toJSON DirectorySiteSettings{..}
          = object
              (catMaybes
                 [("interstitialPlacementAccepted" .=) <$>
                    _dssInterstitialPlacementAccepted,
                  ("dfp_settings" .=) <$> _dssDfpSettings,
                  ("verificationTagOptOut" .=) <$>
                    _dssVerificationTagOptOut,
                  ("activeViewOptOut" .=) <$> _dssActiveViewOptOut,
                  ("videoActiveViewOptOut" .=) <$>
                    _dssVideoActiveViewOptOut,
                  ("instream_video_placement_accepted" .=) <$>
                    _dssInstreamVideoPlacementAccepted,
                  ("nielsenOcrOptOut" .=) <$> _dssNielsenOcrOptOut])

-- | Directory Site List Response
--
-- /See:/ 'directorySitesListResponse' smart constructor.
data DirectorySitesListResponse = DirectorySitesListResponse
    { _dslrNextPageToken  :: !(Maybe Text)
    , _dslrKind           :: !Text
    , _dslrDirectorySites :: !(Maybe [Maybe DirectorySite])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslrNextPageToken'
--
-- * 'dslrKind'
--
-- * 'dslrDirectorySites'
directorySitesListResponse
    :: DirectorySitesListResponse
directorySitesListResponse =
    DirectorySitesListResponse
    { _dslrNextPageToken = Nothing
    , _dslrKind = "dfareporting#directorySitesListResponse"
    , _dslrDirectorySites = Nothing
    }

-- | Pagination token to be used for the next list operation.
dslrNextPageToken :: Lens' DirectorySitesListResponse (Maybe Text)
dslrNextPageToken
  = lens _dslrNextPageToken
      (\ s a -> s{_dslrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#directorySitesListResponse\".
dslrKind :: Lens' DirectorySitesListResponse Text
dslrKind = lens _dslrKind (\ s a -> s{_dslrKind = a})

-- | Directory site collection.
dslrDirectorySites :: Lens' DirectorySitesListResponse [Maybe DirectorySite]
dslrDirectorySites
  = lens _dslrDirectorySites
      (\ s a -> s{_dslrDirectorySites = a})
      . _Default
      . _Coerce

instance FromJSON DirectorySitesListResponse where
        parseJSON
          = withObject "DirectorySitesListResponse"
              (\ o ->
                 DirectorySitesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#directorySitesListResponse")
                     <*> (o .:? "directorySites" .!= mempty))

instance ToJSON DirectorySitesListResponse where
        toJSON DirectorySitesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dslrNextPageToken,
                  Just ("kind" .= _dslrKind),
                  ("directorySites" .=) <$> _dslrDirectorySites])

-- | Contains properties of an event tag.
--
-- /See:/ 'eventTag' smart constructor.
data EventTag = EventTag
    { _etStatus                     :: !(Maybe EventTagStatus)
    , _etExcludeFromAdxRequests     :: !(Maybe Bool)
    , _etEnabledByDefault           :: !(Maybe Bool)
    , _etKind                       :: !Text
    , _etCampaignIdDimensionValue   :: !(Maybe (Maybe DimensionValue))
    , _etAdvertiserId               :: !(Maybe Int64)
    , _etUrl                        :: !(Maybe Text)
    , _etAdvertiserIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _etSslCompliant               :: !(Maybe Bool)
    , _etCampaignId                 :: !(Maybe Int64)
    , _etAccountId                  :: !(Maybe Int64)
    , _etName                       :: !(Maybe Text)
    , _etUrlEscapeLevels            :: !(Maybe Int32)
    , _etSiteIds                    :: !(Maybe [Int64])
    , _etId                         :: !(Maybe Int64)
    , _etSubaccountId               :: !(Maybe Int64)
    , _etType                       :: !(Maybe EventTagType)
    , _etSiteFilterType             :: !(Maybe EventTagSiteFilterType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etStatus'
--
-- * 'etExcludeFromAdxRequests'
--
-- * 'etEnabledByDefault'
--
-- * 'etKind'
--
-- * 'etCampaignIdDimensionValue'
--
-- * 'etAdvertiserId'
--
-- * 'etUrl'
--
-- * 'etAdvertiserIdDimensionValue'
--
-- * 'etSslCompliant'
--
-- * 'etCampaignId'
--
-- * 'etAccountId'
--
-- * 'etName'
--
-- * 'etUrlEscapeLevels'
--
-- * 'etSiteIds'
--
-- * 'etId'
--
-- * 'etSubaccountId'
--
-- * 'etType'
--
-- * 'etSiteFilterType'
eventTag
    :: EventTag
eventTag =
    EventTag
    { _etStatus = Nothing
    , _etExcludeFromAdxRequests = Nothing
    , _etEnabledByDefault = Nothing
    , _etKind = "dfareporting#eventTag"
    , _etCampaignIdDimensionValue = Nothing
    , _etAdvertiserId = Nothing
    , _etUrl = Nothing
    , _etAdvertiserIdDimensionValue = Nothing
    , _etSslCompliant = Nothing
    , _etCampaignId = Nothing
    , _etAccountId = Nothing
    , _etName = Nothing
    , _etUrlEscapeLevels = Nothing
    , _etSiteIds = Nothing
    , _etId = Nothing
    , _etSubaccountId = Nothing
    , _etType = Nothing
    , _etSiteFilterType = Nothing
    }

-- | Status of this event tag. Must be ENABLED for this event tag to fire.
-- This is a required field.
etStatus :: Lens' EventTag (Maybe EventTagStatus)
etStatus = lens _etStatus (\ s a -> s{_etStatus = a})

-- | Whether to remove this event tag from ads that are trafficked through
-- DoubleClick Bid Manager to Ad Exchange. This may be useful if the event
-- tag uses a pixel that is unapproved for Ad Exchange bids on one or more
-- networks, such as the Google Display Network.
etExcludeFromAdxRequests :: Lens' EventTag (Maybe Bool)
etExcludeFromAdxRequests
  = lens _etExcludeFromAdxRequests
      (\ s a -> s{_etExcludeFromAdxRequests = a})

-- | Whether this event tag should be automatically enabled for all of the
-- advertiser\'s campaigns and ads.
etEnabledByDefault :: Lens' EventTag (Maybe Bool)
etEnabledByDefault
  = lens _etEnabledByDefault
      (\ s a -> s{_etEnabledByDefault = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#eventTag\".
etKind :: Lens' EventTag Text
etKind = lens _etKind (\ s a -> s{_etKind = a})

-- | Dimension value for the ID of the campaign. This is a read-only,
-- auto-generated field.
etCampaignIdDimensionValue :: Lens' EventTag (Maybe (Maybe DimensionValue))
etCampaignIdDimensionValue
  = lens _etCampaignIdDimensionValue
      (\ s a -> s{_etCampaignIdDimensionValue = a})

-- | Advertiser ID of this event tag. This field or the campaignId field is
-- required on insertion.
etAdvertiserId :: Lens' EventTag (Maybe Int64)
etAdvertiserId
  = lens _etAdvertiserId
      (\ s a -> s{_etAdvertiserId = a})

-- | Payload URL for this event tag. The URL on a click-through event tag
-- should have a landing page URL appended to the end of it. This field is
-- required on insertion.
etUrl :: Lens' EventTag (Maybe Text)
etUrl = lens _etUrl (\ s a -> s{_etUrl = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
etAdvertiserIdDimensionValue :: Lens' EventTag (Maybe (Maybe DimensionValue))
etAdvertiserIdDimensionValue
  = lens _etAdvertiserIdDimensionValue
      (\ s a -> s{_etAdvertiserIdDimensionValue = a})

-- | Whether this tag is SSL-compliant or not. This is a read-only field.
etSslCompliant :: Lens' EventTag (Maybe Bool)
etSslCompliant
  = lens _etSslCompliant
      (\ s a -> s{_etSslCompliant = a})

-- | Campaign ID of this event tag. This field or the advertiserId field is
-- required on insertion.
etCampaignId :: Lens' EventTag (Maybe Int64)
etCampaignId
  = lens _etCampaignId (\ s a -> s{_etCampaignId = a})

-- | Account ID of this event tag. This is a read-only field that can be left
-- blank.
etAccountId :: Lens' EventTag (Maybe Int64)
etAccountId
  = lens _etAccountId (\ s a -> s{_etAccountId = a})

-- | Name of this event tag. This is a required field and must be less than
-- 256 characters long.
etName :: Lens' EventTag (Maybe Text)
etName = lens _etName (\ s a -> s{_etName = a})

-- | Number of times the landing page URL should be URL-escaped before being
-- appended to the click-through event tag URL. Only applies to
-- click-through event tags as specified by the event tag type.
etUrlEscapeLevels :: Lens' EventTag (Maybe Int32)
etUrlEscapeLevels
  = lens _etUrlEscapeLevels
      (\ s a -> s{_etUrlEscapeLevels = a})

-- | Filter list of site IDs associated with this event tag. The
-- siteFilterType determines whether this is a whitelist or blacklist
-- filter.
etSiteIds :: Lens' EventTag [Int64]
etSiteIds
  = lens _etSiteIds (\ s a -> s{_etSiteIds = a}) .
      _Default
      . _Coerce

-- | ID of this event tag. This is a read-only, auto-generated field.
etId :: Lens' EventTag (Maybe Int64)
etId = lens _etId (\ s a -> s{_etId = a})

-- | Subaccount ID of this event tag. This is a read-only field that can be
-- left blank.
etSubaccountId :: Lens' EventTag (Maybe Int64)
etSubaccountId
  = lens _etSubaccountId
      (\ s a -> s{_etSubaccountId = a})

-- | Event tag type. Can be used to specify whether to use a third-party
-- pixel, a third-party JavaScript URL, or a third-party click-through URL
-- for either impression or click tracking. This is a required field.
etType :: Lens' EventTag (Maybe EventTagType)
etType = lens _etType (\ s a -> s{_etType = a})

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
etSiteFilterType :: Lens' EventTag (Maybe EventTagSiteFilterType)
etSiteFilterType
  = lens _etSiteFilterType
      (\ s a -> s{_etSiteFilterType = a})

instance FromJSON EventTag where
        parseJSON
          = withObject "EventTag"
              (\ o ->
                 EventTag <$>
                   (o .:? "status") <*> (o .:? "excludeFromAdxRequests")
                     <*> (o .:? "enabledByDefault")
                     <*> (o .:? "kind" .!= "dfareporting#eventTag")
                     <*> (o .:? "campaignIdDimensionValue")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "url")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "sslCompliant")
                     <*> (o .:? "campaignId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "urlEscapeLevels")
                     <*> (o .:? "siteIds" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "type")
                     <*> (o .:? "siteFilterType"))

instance ToJSON EventTag where
        toJSON EventTag{..}
          = object
              (catMaybes
                 [("status" .=) <$> _etStatus,
                  ("excludeFromAdxRequests" .=) <$>
                    _etExcludeFromAdxRequests,
                  ("enabledByDefault" .=) <$> _etEnabledByDefault,
                  Just ("kind" .= _etKind),
                  ("campaignIdDimensionValue" .=) <$>
                    _etCampaignIdDimensionValue,
                  ("advertiserId" .=) <$> _etAdvertiserId,
                  ("url" .=) <$> _etUrl,
                  ("advertiserIdDimensionValue" .=) <$>
                    _etAdvertiserIdDimensionValue,
                  ("sslCompliant" .=) <$> _etSslCompliant,
                  ("campaignId" .=) <$> _etCampaignId,
                  ("accountId" .=) <$> _etAccountId,
                  ("name" .=) <$> _etName,
                  ("urlEscapeLevels" .=) <$> _etUrlEscapeLevels,
                  ("siteIds" .=) <$> _etSiteIds, ("id" .=) <$> _etId,
                  ("subaccountId" .=) <$> _etSubaccountId,
                  ("type" .=) <$> _etType,
                  ("siteFilterType" .=) <$> _etSiteFilterType])

-- | Event tag override information.
--
-- /See:/ 'eventTagOverride' smart constructor.
data EventTagOverride = EventTagOverride
    { _etoEnabled :: !(Maybe Bool)
    , _etoId      :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etoEnabled'
--
-- * 'etoId'
eventTagOverride
    :: EventTagOverride
eventTagOverride =
    EventTagOverride
    { _etoEnabled = Nothing
    , _etoId = Nothing
    }

-- | Whether this override is enabled.
etoEnabled :: Lens' EventTagOverride (Maybe Bool)
etoEnabled
  = lens _etoEnabled (\ s a -> s{_etoEnabled = a})

-- | ID of this event tag override. This is a read-only, auto-generated
-- field.
etoId :: Lens' EventTagOverride (Maybe Int64)
etoId = lens _etoId (\ s a -> s{_etoId = a})

instance FromJSON EventTagOverride where
        parseJSON
          = withObject "EventTagOverride"
              (\ o ->
                 EventTagOverride <$>
                   (o .:? "enabled") <*> (o .:? "id"))

instance ToJSON EventTagOverride where
        toJSON EventTagOverride{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _etoEnabled,
                  ("id" .=) <$> _etoId])

-- | Event Tag List Response
--
-- /See:/ 'eventTagsListResponse' smart constructor.
data EventTagsListResponse = EventTagsListResponse
    { _etlrKind      :: !Text
    , _etlrEventTags :: !(Maybe [Maybe EventTag])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etlrKind'
--
-- * 'etlrEventTags'
eventTagsListResponse
    :: EventTagsListResponse
eventTagsListResponse =
    EventTagsListResponse
    { _etlrKind = "dfareporting#eventTagsListResponse"
    , _etlrEventTags = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#eventTagsListResponse\".
etlrKind :: Lens' EventTagsListResponse Text
etlrKind = lens _etlrKind (\ s a -> s{_etlrKind = a})

-- | Event tag collection.
etlrEventTags :: Lens' EventTagsListResponse [Maybe EventTag]
etlrEventTags
  = lens _etlrEventTags
      (\ s a -> s{_etlrEventTags = a})
      . _Default
      . _Coerce

instance FromJSON EventTagsListResponse where
        parseJSON
          = withObject "EventTagsListResponse"
              (\ o ->
                 EventTagsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#eventTagsListResponse")
                     <*> (o .:? "eventTags" .!= mempty))

instance ToJSON EventTagsListResponse where
        toJSON EventTagsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _etlrKind),
                  ("eventTags" .=) <$> _etlrEventTags])

-- | Represents a File resource. A file contains the metadata for a report
-- run. It shows the status of the run and holds the URLs to the generated
-- report data if the run is finished and the status is
-- \"REPORT_AVAILABLE\".
--
-- /See:/ 'file' smart constructor.
data File = File
    { _fStatus           :: !(Maybe FileStatus)
    , _fEtag             :: !(Maybe Text)
    , _fKind             :: !Text
    , _fUrls             :: !(Maybe FileUrls)
    , _fReportId         :: !(Maybe Int64)
    , _fDateRange        :: !(Maybe (Maybe DateRange))
    , _fFormat           :: !(Maybe FileFormat)
    , _fLastModifiedTime :: !(Maybe Int64)
    , _fId               :: !(Maybe Int64)
    , _fFileName         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fStatus'
--
-- * 'fEtag'
--
-- * 'fKind'
--
-- * 'fUrls'
--
-- * 'fReportId'
--
-- * 'fDateRange'
--
-- * 'fFormat'
--
-- * 'fLastModifiedTime'
--
-- * 'fId'
--
-- * 'fFileName'
file
    :: File
file =
    File
    { _fStatus = Nothing
    , _fEtag = Nothing
    , _fKind = "dfareporting#file"
    , _fUrls = Nothing
    , _fReportId = Nothing
    , _fDateRange = Nothing
    , _fFormat = Nothing
    , _fLastModifiedTime = Nothing
    , _fId = Nothing
    , _fFileName = Nothing
    }

-- | The status of the report file.
fStatus :: Lens' File (Maybe FileStatus)
fStatus = lens _fStatus (\ s a -> s{_fStatus = a})

-- | The eTag of this response for caching purposes.
fEtag :: Lens' File (Maybe Text)
fEtag = lens _fEtag (\ s a -> s{_fEtag = a})

-- | The kind of resource this is, in this case dfareporting#file.
fKind :: Lens' File Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The URLs where the completed report file can be downloaded.
fUrls :: Lens' File (Maybe FileUrls)
fUrls = lens _fUrls (\ s a -> s{_fUrls = a})

-- | The ID of the report this file was generated from.
fReportId :: Lens' File (Maybe Int64)
fReportId
  = lens _fReportId (\ s a -> s{_fReportId = a})

-- | The date range for which the file has report data. The date range will
-- always be the absolute date range for which the report is run.
fDateRange :: Lens' File (Maybe (Maybe DateRange))
fDateRange
  = lens _fDateRange (\ s a -> s{_fDateRange = a})

-- | The output format of the report. Only available once the file is
-- available.
fFormat :: Lens' File (Maybe FileFormat)
fFormat = lens _fFormat (\ s a -> s{_fFormat = a})

-- | The timestamp in milliseconds since epoch when this file was last
-- modified.
fLastModifiedTime :: Lens' File (Maybe Int64)
fLastModifiedTime
  = lens _fLastModifiedTime
      (\ s a -> s{_fLastModifiedTime = a})

-- | The unique ID of this report file.
fId :: Lens' File (Maybe Int64)
fId = lens _fId (\ s a -> s{_fId = a})

-- | The filename of the file.
fFileName :: Lens' File (Maybe Text)
fFileName
  = lens _fFileName (\ s a -> s{_fFileName = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "dfareporting#file")
                     <*> (o .:? "urls")
                     <*> (o .:? "reportId")
                     <*> (o .:? "dateRange")
                     <*> (o .:? "format")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "id")
                     <*> (o .:? "fileName"))

instance ToJSON File where
        toJSON File{..}
          = object
              (catMaybes
                 [("status" .=) <$> _fStatus, ("etag" .=) <$> _fEtag,
                  Just ("kind" .= _fKind), ("urls" .=) <$> _fUrls,
                  ("reportId" .=) <$> _fReportId,
                  ("dateRange" .=) <$> _fDateRange,
                  ("format" .=) <$> _fFormat,
                  ("lastModifiedTime" .=) <$> _fLastModifiedTime,
                  ("id" .=) <$> _fId, ("fileName" .=) <$> _fFileName])

-- | Represents the list of File resources.
--
-- /See:/ 'fileList' smart constructor.
data FileList = FileList
    { _flEtag          :: !(Maybe Text)
    , _flNextPageToken :: !(Maybe Text)
    , _flKind          :: !Text
    , _flItems         :: !(Maybe [Maybe File])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flEtag'
--
-- * 'flNextPageToken'
--
-- * 'flKind'
--
-- * 'flItems'
fileList
    :: FileList
fileList =
    FileList
    { _flEtag = Nothing
    , _flNextPageToken = Nothing
    , _flKind = "dfareporting#fileList"
    , _flItems = Nothing
    }

-- | The eTag of this response for caching purposes.
flEtag :: Lens' FileList (Maybe Text)
flEtag = lens _flEtag (\ s a -> s{_flEtag = a})

-- | Continuation token used to page through files. To retrieve the next page
-- of results, set the next request\'s \"pageToken\" to the value of this
-- field. The page token is only valid for a limited amount of time and
-- should not be persisted.
flNextPageToken :: Lens' FileList (Maybe Text)
flNextPageToken
  = lens _flNextPageToken
      (\ s a -> s{_flNextPageToken = a})

-- | The kind of list this is, in this case dfareporting#fileList.
flKind :: Lens' FileList Text
flKind = lens _flKind (\ s a -> s{_flKind = a})

-- | The files returned in this response.
flItems :: Lens' FileList [Maybe File]
flItems
  = lens _flItems (\ s a -> s{_flItems = a}) . _Default
      . _Coerce

instance FromJSON FileList where
        parseJSON
          = withObject "FileList"
              (\ o ->
                 FileList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dfareporting#fileList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON FileList where
        toJSON FileList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _flEtag,
                  ("nextPageToken" .=) <$> _flNextPageToken,
                  Just ("kind" .= _flKind), ("items" .=) <$> _flItems])

-- | The URLs where the completed report file can be downloaded.
--
-- /See:/ 'fileUrls' smart constructor.
data FileUrls = FileUrls
    { _fuBrowserUrl :: !(Maybe Text)
    , _fuApiUrl     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileUrls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuBrowserUrl'
--
-- * 'fuApiUrl'
fileUrls
    :: FileUrls
fileUrls =
    FileUrls
    { _fuBrowserUrl = Nothing
    , _fuApiUrl = Nothing
    }

-- | The URL for downloading the report data through a browser.
fuBrowserUrl :: Lens' FileUrls (Maybe Text)
fuBrowserUrl
  = lens _fuBrowserUrl (\ s a -> s{_fuBrowserUrl = a})

-- | The URL for downloading the report data through the API.
fuApiUrl :: Lens' FileUrls (Maybe Text)
fuApiUrl = lens _fuApiUrl (\ s a -> s{_fuApiUrl = a})

instance FromJSON FileUrls where
        parseJSON
          = withObject "FileUrls"
              (\ o ->
                 FileUrls <$>
                   (o .:? "browserUrl") <*> (o .:? "apiUrl"))

instance ToJSON FileUrls where
        toJSON FileUrls{..}
          = object
              (catMaybes
                 [("browserUrl" .=) <$> _fuBrowserUrl,
                  ("apiUrl" .=) <$> _fuApiUrl])

-- | Flight
--
-- /See:/ 'flight' smart constructor.
data Flight = Flight
    { _fRateOrCost :: !(Maybe Int64)
    , _fEndDate    :: !(Maybe UTCTime)
    , _fStartDate  :: !(Maybe UTCTime)
    , _fUnits      :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Flight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fRateOrCost'
--
-- * 'fEndDate'
--
-- * 'fStartDate'
--
-- * 'fUnits'
flight
    :: Flight
flight =
    Flight
    { _fRateOrCost = Nothing
    , _fEndDate = Nothing
    , _fStartDate = Nothing
    , _fUnits = Nothing
    }

-- | Rate or cost of this flight.
fRateOrCost :: Lens' Flight (Maybe Int64)
fRateOrCost
  = lens _fRateOrCost (\ s a -> s{_fRateOrCost = a})

-- | Inventory item flight end date.
fEndDate :: Lens' Flight (Maybe UTCTime)
fEndDate = lens _fEndDate (\ s a -> s{_fEndDate = a})

-- | Inventory item flight start date.
fStartDate :: Lens' Flight (Maybe UTCTime)
fStartDate
  = lens _fStartDate (\ s a -> s{_fStartDate = a})

-- | Units of this flight.
fUnits :: Lens' Flight (Maybe Int64)
fUnits = lens _fUnits (\ s a -> s{_fUnits = a})

instance FromJSON Flight where
        parseJSON
          = withObject "Flight"
              (\ o ->
                 Flight <$>
                   (o .:? "rateOrCost") <*> (o .:? "endDate") <*>
                     (o .:? "startDate")
                     <*> (o .:? "units"))

instance ToJSON Flight where
        toJSON Flight{..}
          = object
              (catMaybes
                 [("rateOrCost" .=) <$> _fRateOrCost,
                  ("endDate" .=) <$> _fEndDate,
                  ("startDate" .=) <$> _fStartDate,
                  ("units" .=) <$> _fUnits])

-- | Floodlight Activity GenerateTag Response
--
-- /See:/ 'floodlightActivitiesGenerateTagResponse' smart constructor.
data FloodlightActivitiesGenerateTagResponse = FloodlightActivitiesGenerateTagResponse
    { _fagtrFloodlightActivityTag :: !(Maybe Text)
    , _fagtrKind                  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGenerateTagResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagtrFloodlightActivityTag'
--
-- * 'fagtrKind'
floodlightActivitiesGenerateTagResponse
    :: FloodlightActivitiesGenerateTagResponse
floodlightActivitiesGenerateTagResponse =
    FloodlightActivitiesGenerateTagResponse
    { _fagtrFloodlightActivityTag = Nothing
    , _fagtrKind = "dfareporting#floodlightActivitiesGenerateTagResponse"
    }

-- | Generated tag for this floodlight activity.
fagtrFloodlightActivityTag :: Lens' FloodlightActivitiesGenerateTagResponse (Maybe Text)
fagtrFloodlightActivityTag
  = lens _fagtrFloodlightActivityTag
      (\ s a -> s{_fagtrFloodlightActivityTag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightActivitiesGenerateTagResponse\".
fagtrKind :: Lens' FloodlightActivitiesGenerateTagResponse Text
fagtrKind
  = lens _fagtrKind (\ s a -> s{_fagtrKind = a})

instance FromJSON
         FloodlightActivitiesGenerateTagResponse where
        parseJSON
          = withObject
              "FloodlightActivitiesGenerateTagResponse"
              (\ o ->
                 FloodlightActivitiesGenerateTagResponse <$>
                   (o .:? "floodlightActivityTag") <*>
                     (o .:? "kind" .!=
                        "dfareporting#floodlightActivitiesGenerateTagResponse"))

instance ToJSON
         FloodlightActivitiesGenerateTagResponse where
        toJSON FloodlightActivitiesGenerateTagResponse{..}
          = object
              (catMaybes
                 [("floodlightActivityTag" .=) <$>
                    _fagtrFloodlightActivityTag,
                  Just ("kind" .= _fagtrKind)])

-- | Floodlight Activity List Response
--
-- /See:/ 'floodlightActivitiesListResponse' smart constructor.
data FloodlightActivitiesListResponse = FloodlightActivitiesListResponse
    { _falrNextPageToken        :: !(Maybe Text)
    , _falrKind                 :: !Text
    , _falrFloodlightActivities :: !(Maybe [Maybe FloodlightActivity])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'falrNextPageToken'
--
-- * 'falrKind'
--
-- * 'falrFloodlightActivities'
floodlightActivitiesListResponse
    :: FloodlightActivitiesListResponse
floodlightActivitiesListResponse =
    FloodlightActivitiesListResponse
    { _falrNextPageToken = Nothing
    , _falrKind = "dfareporting#floodlightActivitiesListResponse"
    , _falrFloodlightActivities = Nothing
    }

-- | Pagination token to be used for the next list operation.
falrNextPageToken :: Lens' FloodlightActivitiesListResponse (Maybe Text)
falrNextPageToken
  = lens _falrNextPageToken
      (\ s a -> s{_falrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightActivitiesListResponse\".
falrKind :: Lens' FloodlightActivitiesListResponse Text
falrKind = lens _falrKind (\ s a -> s{_falrKind = a})

-- | Floodlight activity collection.
falrFloodlightActivities :: Lens' FloodlightActivitiesListResponse [Maybe FloodlightActivity]
falrFloodlightActivities
  = lens _falrFloodlightActivities
      (\ s a -> s{_falrFloodlightActivities = a})
      . _Default
      . _Coerce

instance FromJSON FloodlightActivitiesListResponse
         where
        parseJSON
          = withObject "FloodlightActivitiesListResponse"
              (\ o ->
                 FloodlightActivitiesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#floodlightActivitiesListResponse")
                     <*> (o .:? "floodlightActivities" .!= mempty))

instance ToJSON FloodlightActivitiesListResponse
         where
        toJSON FloodlightActivitiesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _falrNextPageToken,
                  Just ("kind" .= _falrKind),
                  ("floodlightActivities" .=) <$>
                    _falrFloodlightActivities])

-- | Contains properties of a Floodlight activity.
--
-- /See:/ 'floodlightActivity' smart constructor.
data FloodlightActivity = FloodlightActivity
    { _faCountingMethod                          :: !(Maybe FloodlightActivityCountingMethod)
    , _faTagString                               :: !(Maybe Text)
    , _faSecure                                  :: !(Maybe Bool)
    , _faExpectedUrl                             :: !(Maybe Text)
    , _faFloodlightActivityGroupTagString        :: !(Maybe Text)
    , _faFloodlightConfigurationId               :: !(Maybe Int64)
    , _faKind                                    :: !Text
    , _faImageTagEnabled                         :: !(Maybe Bool)
    , _faAdvertiserId                            :: !(Maybe Int64)
    , _faAdvertiserIdDimensionValue              :: !(Maybe (Maybe DimensionValue))
    , _faSslCompliant                            :: !(Maybe Bool)
    , _faIdDimensionValue                        :: !(Maybe (Maybe DimensionValue))
    , _faTagFormat                               :: !(Maybe FloodlightActivityTagFormat)
    , _faCacheBustingType                        :: !(Maybe FloodlightActivityCacheBustingType)
    , _faAccountId                               :: !(Maybe Int64)
    , _faName                                    :: !(Maybe Text)
    , _faPublisherTags                           :: !(Maybe [Maybe FloodlightActivityPublisherDynamicTag])
    , _faFloodlightActivityGroupId               :: !(Maybe Int64)
    , _faHidden                                  :: !(Maybe Bool)
    , _faFloodlightActivityGroupType             :: !(Maybe FloodlightActivityFloodlightActivityGroupType)
    , _faDefaultTags                             :: !(Maybe [Maybe FloodlightActivityDynamicTag])
    , _faFloodlightActivityGroupName             :: !(Maybe Text)
    , _faId                                      :: !(Maybe Int64)
    , _faSslRequired                             :: !(Maybe Bool)
    , _faUserDefinedVariableTypes                :: !(Maybe [FloodlightActivityItemUserDefinedVariableTypes])
    , _faSubaccountId                            :: !(Maybe Int64)
    , _faNotes                                   :: !(Maybe Text)
    , _faFloodlightConfigurationIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faCountingMethod'
--
-- * 'faTagString'
--
-- * 'faSecure'
--
-- * 'faExpectedUrl'
--
-- * 'faFloodlightActivityGroupTagString'
--
-- * 'faFloodlightConfigurationId'
--
-- * 'faKind'
--
-- * 'faImageTagEnabled'
--
-- * 'faAdvertiserId'
--
-- * 'faAdvertiserIdDimensionValue'
--
-- * 'faSslCompliant'
--
-- * 'faIdDimensionValue'
--
-- * 'faTagFormat'
--
-- * 'faCacheBustingType'
--
-- * 'faAccountId'
--
-- * 'faName'
--
-- * 'faPublisherTags'
--
-- * 'faFloodlightActivityGroupId'
--
-- * 'faHidden'
--
-- * 'faFloodlightActivityGroupType'
--
-- * 'faDefaultTags'
--
-- * 'faFloodlightActivityGroupName'
--
-- * 'faId'
--
-- * 'faSslRequired'
--
-- * 'faUserDefinedVariableTypes'
--
-- * 'faSubaccountId'
--
-- * 'faNotes'
--
-- * 'faFloodlightConfigurationIdDimensionValue'
floodlightActivity
    :: FloodlightActivity
floodlightActivity =
    FloodlightActivity
    { _faCountingMethod = Nothing
    , _faTagString = Nothing
    , _faSecure = Nothing
    , _faExpectedUrl = Nothing
    , _faFloodlightActivityGroupTagString = Nothing
    , _faFloodlightConfigurationId = Nothing
    , _faKind = "dfareporting#floodlightActivity"
    , _faImageTagEnabled = Nothing
    , _faAdvertiserId = Nothing
    , _faAdvertiserIdDimensionValue = Nothing
    , _faSslCompliant = Nothing
    , _faIdDimensionValue = Nothing
    , _faTagFormat = Nothing
    , _faCacheBustingType = Nothing
    , _faAccountId = Nothing
    , _faName = Nothing
    , _faPublisherTags = Nothing
    , _faFloodlightActivityGroupId = Nothing
    , _faHidden = Nothing
    , _faFloodlightActivityGroupType = Nothing
    , _faDefaultTags = Nothing
    , _faFloodlightActivityGroupName = Nothing
    , _faId = Nothing
    , _faSslRequired = Nothing
    , _faUserDefinedVariableTypes = Nothing
    , _faSubaccountId = Nothing
    , _faNotes = Nothing
    , _faFloodlightConfigurationIdDimensionValue = Nothing
    }

-- | Counting method for conversions for this floodlight activity. This is a
-- required field.
faCountingMethod :: Lens' FloodlightActivity (Maybe FloodlightActivityCountingMethod)
faCountingMethod
  = lens _faCountingMethod
      (\ s a -> s{_faCountingMethod = a})

-- | Value of the cat= paramter in the floodlight tag, which the ad servers
-- use to identify the activity. This is optional: if empty, a new tag
-- string will be generated for you. This string must be 1 to 8 characters
-- long, with valid characters being [a-z][A-Z][0-9][-][ _ ]. This tag
-- string must also be unique among activities of the same activity group.
-- This field is read-only after insertion.
faTagString :: Lens' FloodlightActivity (Maybe Text)
faTagString
  = lens _faTagString (\ s a -> s{_faTagString = a})

-- | Whether this tag should use SSL.
faSecure :: Lens' FloodlightActivity (Maybe Bool)
faSecure = lens _faSecure (\ s a -> s{_faSecure = a})

-- | URL where this tag will be deployed. If specified, must be less than 256
-- characters long.
faExpectedUrl :: Lens' FloodlightActivity (Maybe Text)
faExpectedUrl
  = lens _faExpectedUrl
      (\ s a -> s{_faExpectedUrl = a})

-- | Tag string of the associated floodlight activity group. This is a
-- read-only field.
faFloodlightActivityGroupTagString :: Lens' FloodlightActivity (Maybe Text)
faFloodlightActivityGroupTagString
  = lens _faFloodlightActivityGroupTagString
      (\ s a -> s{_faFloodlightActivityGroupTagString = a})

-- | Floodlight configuration ID of this floodlight activity. If this field
-- is left blank, the value will be copied over either from the activity
-- group\'s floodlight configuration or from the existing activity\'s
-- floodlight configuration.
faFloodlightConfigurationId :: Lens' FloodlightActivity (Maybe Int64)
faFloodlightConfigurationId
  = lens _faFloodlightConfigurationId
      (\ s a -> s{_faFloodlightConfigurationId = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightActivity\".
faKind :: Lens' FloodlightActivity Text
faKind = lens _faKind (\ s a -> s{_faKind = a})

-- | Whether the image tag is enabled for this activity.
faImageTagEnabled :: Lens' FloodlightActivity (Maybe Bool)
faImageTagEnabled
  = lens _faImageTagEnabled
      (\ s a -> s{_faImageTagEnabled = a})

-- | Advertiser ID of this floodlight activity. If this field is left blank,
-- the value will be copied over either from the activity group\'s
-- advertiser or the existing activity\'s advertiser.
faAdvertiserId :: Lens' FloodlightActivity (Maybe Int64)
faAdvertiserId
  = lens _faAdvertiserId
      (\ s a -> s{_faAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
faAdvertiserIdDimensionValue :: Lens' FloodlightActivity (Maybe (Maybe DimensionValue))
faAdvertiserIdDimensionValue
  = lens _faAdvertiserIdDimensionValue
      (\ s a -> s{_faAdvertiserIdDimensionValue = a})

-- | Whether the floodlight activity is SSL-compliant. This is a read-only
-- field, its value detected by the system from the floodlight tags.
faSslCompliant :: Lens' FloodlightActivity (Maybe Bool)
faSslCompliant
  = lens _faSslCompliant
      (\ s a -> s{_faSslCompliant = a})

-- | Dimension value for the ID of this floodlight activity. This is a
-- read-only, auto-generated field.
faIdDimensionValue :: Lens' FloodlightActivity (Maybe (Maybe DimensionValue))
faIdDimensionValue
  = lens _faIdDimensionValue
      (\ s a -> s{_faIdDimensionValue = a})

-- | Tag format type for the floodlight activity. If left blank, the tag
-- format will default to HTML.
faTagFormat :: Lens' FloodlightActivity (Maybe FloodlightActivityTagFormat)
faTagFormat
  = lens _faTagFormat (\ s a -> s{_faTagFormat = a})

-- | Code type used for cache busting in the generated tag.
faCacheBustingType :: Lens' FloodlightActivity (Maybe FloodlightActivityCacheBustingType)
faCacheBustingType
  = lens _faCacheBustingType
      (\ s a -> s{_faCacheBustingType = a})

-- | Account ID of this floodlight activity. This is a read-only field that
-- can be left blank.
faAccountId :: Lens' FloodlightActivity (Maybe Int64)
faAccountId
  = lens _faAccountId (\ s a -> s{_faAccountId = a})

-- | Name of this floodlight activity. This is a required field. Must be less
-- than 129 characters long and cannot contain quotes.
faName :: Lens' FloodlightActivity (Maybe Text)
faName = lens _faName (\ s a -> s{_faName = a})

-- | Publisher dynamic floodlight tags.
faPublisherTags :: Lens' FloodlightActivity [Maybe FloodlightActivityPublisherDynamicTag]
faPublisherTags
  = lens _faPublisherTags
      (\ s a -> s{_faPublisherTags = a})
      . _Default
      . _Coerce

-- | Floodlight activity group ID of this floodlight activity. This is a
-- required field.
faFloodlightActivityGroupId :: Lens' FloodlightActivity (Maybe Int64)
faFloodlightActivityGroupId
  = lens _faFloodlightActivityGroupId
      (\ s a -> s{_faFloodlightActivityGroupId = a})

-- | Whether this activity is archived.
faHidden :: Lens' FloodlightActivity (Maybe Bool)
faHidden = lens _faHidden (\ s a -> s{_faHidden = a})

-- | Type of the associated floodlight activity group. This is a read-only
-- field.
faFloodlightActivityGroupType :: Lens' FloodlightActivity (Maybe FloodlightActivityFloodlightActivityGroupType)
faFloodlightActivityGroupType
  = lens _faFloodlightActivityGroupType
      (\ s a -> s{_faFloodlightActivityGroupType = a})

-- | Dynamic floodlight tags.
faDefaultTags :: Lens' FloodlightActivity [Maybe FloodlightActivityDynamicTag]
faDefaultTags
  = lens _faDefaultTags
      (\ s a -> s{_faDefaultTags = a})
      . _Default
      . _Coerce

-- | Name of the associated floodlight activity group. This is a read-only
-- field.
faFloodlightActivityGroupName :: Lens' FloodlightActivity (Maybe Text)
faFloodlightActivityGroupName
  = lens _faFloodlightActivityGroupName
      (\ s a -> s{_faFloodlightActivityGroupName = a})

-- | ID of this floodlight activity. This is a read-only, auto-generated
-- field.
faId :: Lens' FloodlightActivity (Maybe Int64)
faId = lens _faId (\ s a -> s{_faId = a})

-- | Whether this floodlight activity must be SSL-compliant.
faSslRequired :: Lens' FloodlightActivity (Maybe Bool)
faSslRequired
  = lens _faSslRequired
      (\ s a -> s{_faSslRequired = a})

-- | List of the user-defined variables used by this conversion tag. These
-- map to the \"u[1-20]=\" in the tags. Each of these can have a user
-- defined type. Acceptable values are: - \"U1\" - \"U2\" - \"U3\" - \"U4\"
-- - \"U5\" - \"U6\" - \"U7\" - \"U8\" - \"U9\" - \"U10\" - \"U11\" -
-- \"U12\" - \"U13\" - \"U14\" - \"U15\" - \"U16\" - \"U17\" - \"U18\" -
-- \"U19\" - \"U20\"
faUserDefinedVariableTypes :: Lens' FloodlightActivity [FloodlightActivityItemUserDefinedVariableTypes]
faUserDefinedVariableTypes
  = lens _faUserDefinedVariableTypes
      (\ s a -> s{_faUserDefinedVariableTypes = a})
      . _Default
      . _Coerce

-- | Subaccount ID of this floodlight activity. This is a read-only field
-- that can be left blank.
faSubaccountId :: Lens' FloodlightActivity (Maybe Int64)
faSubaccountId
  = lens _faSubaccountId
      (\ s a -> s{_faSubaccountId = a})

-- | General notes or implementation instructions for the tag.
faNotes :: Lens' FloodlightActivity (Maybe Text)
faNotes = lens _faNotes (\ s a -> s{_faNotes = a})

-- | Dimension value for the ID of the floodlight configuration. This is a
-- read-only, auto-generated field.
faFloodlightConfigurationIdDimensionValue :: Lens' FloodlightActivity (Maybe (Maybe DimensionValue))
faFloodlightConfigurationIdDimensionValue
  = lens _faFloodlightConfigurationIdDimensionValue
      (\ s a ->
         s{_faFloodlightConfigurationIdDimensionValue = a})

instance FromJSON FloodlightActivity where
        parseJSON
          = withObject "FloodlightActivity"
              (\ o ->
                 FloodlightActivity <$>
                   (o .:? "countingMethod") <*> (o .:? "tagString") <*>
                     (o .:? "secure")
                     <*> (o .:? "expectedUrl")
                     <*> (o .:? "floodlightActivityGroupTagString")
                     <*> (o .:? "floodlightConfigurationId")
                     <*>
                     (o .:? "kind" .!= "dfareporting#floodlightActivity")
                     <*> (o .:? "imageTagEnabled")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "sslCompliant")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "tagFormat")
                     <*> (o .:? "cacheBustingType")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "publisherTags" .!= mempty)
                     <*> (o .:? "floodlightActivityGroupId")
                     <*> (o .:? "hidden")
                     <*> (o .:? "floodlightActivityGroupType")
                     <*> (o .:? "defaultTags" .!= mempty)
                     <*> (o .:? "floodlightActivityGroupName")
                     <*> (o .:? "id")
                     <*> (o .:? "sslRequired")
                     <*> (o .:? "userDefinedVariableTypes" .!= mempty)
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "notes")
                     <*>
                     (o .:? "floodlightConfigurationIdDimensionValue"))

instance ToJSON FloodlightActivity where
        toJSON FloodlightActivity{..}
          = object
              (catMaybes
                 [("countingMethod" .=) <$> _faCountingMethod,
                  ("tagString" .=) <$> _faTagString,
                  ("secure" .=) <$> _faSecure,
                  ("expectedUrl" .=) <$> _faExpectedUrl,
                  ("floodlightActivityGroupTagString" .=) <$>
                    _faFloodlightActivityGroupTagString,
                  ("floodlightConfigurationId" .=) <$>
                    _faFloodlightConfigurationId,
                  Just ("kind" .= _faKind),
                  ("imageTagEnabled" .=) <$> _faImageTagEnabled,
                  ("advertiserId" .=) <$> _faAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _faAdvertiserIdDimensionValue,
                  ("sslCompliant" .=) <$> _faSslCompliant,
                  ("idDimensionValue" .=) <$> _faIdDimensionValue,
                  ("tagFormat" .=) <$> _faTagFormat,
                  ("cacheBustingType" .=) <$> _faCacheBustingType,
                  ("accountId" .=) <$> _faAccountId,
                  ("name" .=) <$> _faName,
                  ("publisherTags" .=) <$> _faPublisherTags,
                  ("floodlightActivityGroupId" .=) <$>
                    _faFloodlightActivityGroupId,
                  ("hidden" .=) <$> _faHidden,
                  ("floodlightActivityGroupType" .=) <$>
                    _faFloodlightActivityGroupType,
                  ("defaultTags" .=) <$> _faDefaultTags,
                  ("floodlightActivityGroupName" .=) <$>
                    _faFloodlightActivityGroupName,
                  ("id" .=) <$> _faId,
                  ("sslRequired" .=) <$> _faSslRequired,
                  ("userDefinedVariableTypes" .=) <$>
                    _faUserDefinedVariableTypes,
                  ("subaccountId" .=) <$> _faSubaccountId,
                  ("notes" .=) <$> _faNotes,
                  ("floodlightConfigurationIdDimensionValue" .=) <$>
                    _faFloodlightConfigurationIdDimensionValue])

-- | Dynamic Tag
--
-- /See:/ 'floodlightActivityDynamicTag' smart constructor.
data FloodlightActivityDynamicTag = FloodlightActivityDynamicTag
    { _fadtTag  :: !(Maybe Text)
    , _fadtName :: !(Maybe Text)
    , _fadtId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityDynamicTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadtTag'
--
-- * 'fadtName'
--
-- * 'fadtId'
floodlightActivityDynamicTag
    :: FloodlightActivityDynamicTag
floodlightActivityDynamicTag =
    FloodlightActivityDynamicTag
    { _fadtTag = Nothing
    , _fadtName = Nothing
    , _fadtId = Nothing
    }

-- | Tag code.
fadtTag :: Lens' FloodlightActivityDynamicTag (Maybe Text)
fadtTag = lens _fadtTag (\ s a -> s{_fadtTag = a})

-- | Name of this tag.
fadtName :: Lens' FloodlightActivityDynamicTag (Maybe Text)
fadtName = lens _fadtName (\ s a -> s{_fadtName = a})

-- | ID of this dynamic tag. This is a read-only, auto-generated field.
fadtId :: Lens' FloodlightActivityDynamicTag (Maybe Int64)
fadtId = lens _fadtId (\ s a -> s{_fadtId = a})

instance FromJSON FloodlightActivityDynamicTag where
        parseJSON
          = withObject "FloodlightActivityDynamicTag"
              (\ o ->
                 FloodlightActivityDynamicTag <$>
                   (o .:? "tag") <*> (o .:? "name") <*> (o .:? "id"))

instance ToJSON FloodlightActivityDynamicTag where
        toJSON FloodlightActivityDynamicTag{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _fadtTag, ("name" .=) <$> _fadtName,
                  ("id" .=) <$> _fadtId])

-- | Contains properties of a Floodlight activity group.
--
-- /See:/ 'floodlightActivityGroup' smart constructor.
data FloodlightActivityGroup = FloodlightActivityGroup
    { _fagTagString                               :: !(Maybe Text)
    , _fagFloodlightConfigurationId               :: !(Maybe Int64)
    , _fagKind                                    :: !Text
    , _fagAdvertiserId                            :: !(Maybe Int64)
    , _fagAdvertiserIdDimensionValue              :: !(Maybe (Maybe DimensionValue))
    , _fagIdDimensionValue                        :: !(Maybe (Maybe DimensionValue))
    , _fagAccountId                               :: !(Maybe Int64)
    , _fagName                                    :: !(Maybe Text)
    , _fagId                                      :: !(Maybe Int64)
    , _fagSubaccountId                            :: !(Maybe Int64)
    , _fagType                                    :: !(Maybe FloodlightActivityGroupType)
    , _fagFloodlightConfigurationIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagTagString'
--
-- * 'fagFloodlightConfigurationId'
--
-- * 'fagKind'
--
-- * 'fagAdvertiserId'
--
-- * 'fagAdvertiserIdDimensionValue'
--
-- * 'fagIdDimensionValue'
--
-- * 'fagAccountId'
--
-- * 'fagName'
--
-- * 'fagId'
--
-- * 'fagSubaccountId'
--
-- * 'fagType'
--
-- * 'fagFloodlightConfigurationIdDimensionValue'
floodlightActivityGroup
    :: FloodlightActivityGroup
floodlightActivityGroup =
    FloodlightActivityGroup
    { _fagTagString = Nothing
    , _fagFloodlightConfigurationId = Nothing
    , _fagKind = "dfareporting#floodlightActivityGroup"
    , _fagAdvertiserId = Nothing
    , _fagAdvertiserIdDimensionValue = Nothing
    , _fagIdDimensionValue = Nothing
    , _fagAccountId = Nothing
    , _fagName = Nothing
    , _fagId = Nothing
    , _fagSubaccountId = Nothing
    , _fagType = Nothing
    , _fagFloodlightConfigurationIdDimensionValue = Nothing
    }

-- | Value of the type= parameter in the floodlight tag, which the ad servers
-- use to identify the activity group that the activity belongs to. This is
-- optional: if empty, a new tag string will be generated for you. This
-- string must be 1 to 8 characters long, with valid characters being
-- [a-z][A-Z][0-9][-][ _ ]. This tag string must also be unique among
-- activity groups of the same floodlight configuration. This field is
-- read-only after insertion.
fagTagString :: Lens' FloodlightActivityGroup (Maybe Text)
fagTagString
  = lens _fagTagString (\ s a -> s{_fagTagString = a})

-- | Floodlight configuration ID of this floodlight activity group. This is a
-- required field.
fagFloodlightConfigurationId :: Lens' FloodlightActivityGroup (Maybe Int64)
fagFloodlightConfigurationId
  = lens _fagFloodlightConfigurationId
      (\ s a -> s{_fagFloodlightConfigurationId = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightActivityGroup\".
fagKind :: Lens' FloodlightActivityGroup Text
fagKind = lens _fagKind (\ s a -> s{_fagKind = a})

-- | Advertiser ID of this floodlight activity group. If this field is left
-- blank, the value will be copied over either from the floodlight
-- configuration\'s advertiser or from the existing activity group\'s
-- advertiser.
fagAdvertiserId :: Lens' FloodlightActivityGroup (Maybe Int64)
fagAdvertiserId
  = lens _fagAdvertiserId
      (\ s a -> s{_fagAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
fagAdvertiserIdDimensionValue :: Lens' FloodlightActivityGroup (Maybe (Maybe DimensionValue))
fagAdvertiserIdDimensionValue
  = lens _fagAdvertiserIdDimensionValue
      (\ s a -> s{_fagAdvertiserIdDimensionValue = a})

-- | Dimension value for the ID of this floodlight activity group. This is a
-- read-only, auto-generated field.
fagIdDimensionValue :: Lens' FloodlightActivityGroup (Maybe (Maybe DimensionValue))
fagIdDimensionValue
  = lens _fagIdDimensionValue
      (\ s a -> s{_fagIdDimensionValue = a})

-- | Account ID of this floodlight activity group. This is a read-only field
-- that can be left blank.
fagAccountId :: Lens' FloodlightActivityGroup (Maybe Int64)
fagAccountId
  = lens _fagAccountId (\ s a -> s{_fagAccountId = a})

-- | Name of this floodlight activity group. This is a required field. Must
-- be less than 65 characters long and cannot contain quotes.
fagName :: Lens' FloodlightActivityGroup (Maybe Text)
fagName = lens _fagName (\ s a -> s{_fagName = a})

-- | ID of this floodlight activity group. This is a read-only,
-- auto-generated field.
fagId :: Lens' FloodlightActivityGroup (Maybe Int64)
fagId = lens _fagId (\ s a -> s{_fagId = a})

-- | Subaccount ID of this floodlight activity group. This is a read-only
-- field that can be left blank.
fagSubaccountId :: Lens' FloodlightActivityGroup (Maybe Int64)
fagSubaccountId
  = lens _fagSubaccountId
      (\ s a -> s{_fagSubaccountId = a})

-- | Type of the floodlight activity group. This is a required field that is
-- read-only after insertion.
fagType :: Lens' FloodlightActivityGroup (Maybe FloodlightActivityGroupType)
fagType = lens _fagType (\ s a -> s{_fagType = a})

-- | Dimension value for the ID of the floodlight configuration. This is a
-- read-only, auto-generated field.
fagFloodlightConfigurationIdDimensionValue :: Lens' FloodlightActivityGroup (Maybe (Maybe DimensionValue))
fagFloodlightConfigurationIdDimensionValue
  = lens _fagFloodlightConfigurationIdDimensionValue
      (\ s a ->
         s{_fagFloodlightConfigurationIdDimensionValue = a})

instance FromJSON FloodlightActivityGroup where
        parseJSON
          = withObject "FloodlightActivityGroup"
              (\ o ->
                 FloodlightActivityGroup <$>
                   (o .:? "tagString") <*>
                     (o .:? "floodlightConfigurationId")
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#floodlightActivityGroup")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "type")
                     <*>
                     (o .:? "floodlightConfigurationIdDimensionValue"))

instance ToJSON FloodlightActivityGroup where
        toJSON FloodlightActivityGroup{..}
          = object
              (catMaybes
                 [("tagString" .=) <$> _fagTagString,
                  ("floodlightConfigurationId" .=) <$>
                    _fagFloodlightConfigurationId,
                  Just ("kind" .= _fagKind),
                  ("advertiserId" .=) <$> _fagAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _fagAdvertiserIdDimensionValue,
                  ("idDimensionValue" .=) <$> _fagIdDimensionValue,
                  ("accountId" .=) <$> _fagAccountId,
                  ("name" .=) <$> _fagName, ("id" .=) <$> _fagId,
                  ("subaccountId" .=) <$> _fagSubaccountId,
                  ("type" .=) <$> _fagType,
                  ("floodlightConfigurationIdDimensionValue" .=) <$>
                    _fagFloodlightConfigurationIdDimensionValue])

-- | Floodlight Activity Group List Response
--
-- /See:/ 'floodlightActivityGroupsListResponse' smart constructor.
data FloodlightActivityGroupsListResponse = FloodlightActivityGroupsListResponse
    { _faglrNextPageToken            :: !(Maybe Text)
    , _faglrKind                     :: !Text
    , _faglrFloodlightActivityGroups :: !(Maybe [Maybe FloodlightActivityGroup])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faglrNextPageToken'
--
-- * 'faglrKind'
--
-- * 'faglrFloodlightActivityGroups'
floodlightActivityGroupsListResponse
    :: FloodlightActivityGroupsListResponse
floodlightActivityGroupsListResponse =
    FloodlightActivityGroupsListResponse
    { _faglrNextPageToken = Nothing
    , _faglrKind = "dfareporting#floodlightActivityGroupsListResponse"
    , _faglrFloodlightActivityGroups = Nothing
    }

-- | Pagination token to be used for the next list operation.
faglrNextPageToken :: Lens' FloodlightActivityGroupsListResponse (Maybe Text)
faglrNextPageToken
  = lens _faglrNextPageToken
      (\ s a -> s{_faglrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightActivityGroupsListResponse\".
faglrKind :: Lens' FloodlightActivityGroupsListResponse Text
faglrKind
  = lens _faglrKind (\ s a -> s{_faglrKind = a})

-- | Floodlight activity group collection.
faglrFloodlightActivityGroups :: Lens' FloodlightActivityGroupsListResponse [Maybe FloodlightActivityGroup]
faglrFloodlightActivityGroups
  = lens _faglrFloodlightActivityGroups
      (\ s a -> s{_faglrFloodlightActivityGroups = a})
      . _Default
      . _Coerce

instance FromJSON
         FloodlightActivityGroupsListResponse where
        parseJSON
          = withObject "FloodlightActivityGroupsListResponse"
              (\ o ->
                 FloodlightActivityGroupsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#floodlightActivityGroupsListResponse")
                     <*> (o .:? "floodlightActivityGroups" .!= mempty))

instance ToJSON FloodlightActivityGroupsListResponse
         where
        toJSON FloodlightActivityGroupsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _faglrNextPageToken,
                  Just ("kind" .= _faglrKind),
                  ("floodlightActivityGroups" .=) <$>
                    _faglrFloodlightActivityGroups])

-- | Publisher Dynamic Tag
--
-- /See:/ 'floodlightActivityPublisherDynamicTag' smart constructor.
data FloodlightActivityPublisherDynamicTag = FloodlightActivityPublisherDynamicTag
    { _fapdtClickThrough         :: !(Maybe Bool)
    , _fapdtSiteIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _fapdtDynamicTag           :: !(Maybe (Maybe FloodlightActivityDynamicTag))
    , _fapdtDirectorySiteId      :: !(Maybe Int64)
    , _fapdtSiteId               :: !(Maybe Int64)
    , _fapdtViewThrough          :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityPublisherDynamicTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fapdtClickThrough'
--
-- * 'fapdtSiteIdDimensionValue'
--
-- * 'fapdtDynamicTag'
--
-- * 'fapdtDirectorySiteId'
--
-- * 'fapdtSiteId'
--
-- * 'fapdtViewThrough'
floodlightActivityPublisherDynamicTag
    :: FloodlightActivityPublisherDynamicTag
floodlightActivityPublisherDynamicTag =
    FloodlightActivityPublisherDynamicTag
    { _fapdtClickThrough = Nothing
    , _fapdtSiteIdDimensionValue = Nothing
    , _fapdtDynamicTag = Nothing
    , _fapdtDirectorySiteId = Nothing
    , _fapdtSiteId = Nothing
    , _fapdtViewThrough = Nothing
    }

-- | Whether this tag is applicable only for click-throughs.
fapdtClickThrough :: Lens' FloodlightActivityPublisherDynamicTag (Maybe Bool)
fapdtClickThrough
  = lens _fapdtClickThrough
      (\ s a -> s{_fapdtClickThrough = a})

-- | Dimension value for the ID of the site. This is a read-only,
-- auto-generated field.
fapdtSiteIdDimensionValue :: Lens' FloodlightActivityPublisherDynamicTag (Maybe (Maybe DimensionValue))
fapdtSiteIdDimensionValue
  = lens _fapdtSiteIdDimensionValue
      (\ s a -> s{_fapdtSiteIdDimensionValue = a})

-- | Dynamic floodlight tag.
fapdtDynamicTag :: Lens' FloodlightActivityPublisherDynamicTag (Maybe (Maybe FloodlightActivityDynamicTag))
fapdtDynamicTag
  = lens _fapdtDynamicTag
      (\ s a -> s{_fapdtDynamicTag = a})

-- | Directory site ID of this dynamic tag. This is a write-only field that
-- can be used as an alternative to the siteId field. When this resource is
-- retrieved, only the siteId field will be populated.
fapdtDirectorySiteId :: Lens' FloodlightActivityPublisherDynamicTag (Maybe Int64)
fapdtDirectorySiteId
  = lens _fapdtDirectorySiteId
      (\ s a -> s{_fapdtDirectorySiteId = a})

-- | Site ID of this dynamic tag.
fapdtSiteId :: Lens' FloodlightActivityPublisherDynamicTag (Maybe Int64)
fapdtSiteId
  = lens _fapdtSiteId (\ s a -> s{_fapdtSiteId = a})

-- | Whether this tag is applicable only for view-throughs.
fapdtViewThrough :: Lens' FloodlightActivityPublisherDynamicTag (Maybe Bool)
fapdtViewThrough
  = lens _fapdtViewThrough
      (\ s a -> s{_fapdtViewThrough = a})

instance FromJSON
         FloodlightActivityPublisherDynamicTag where
        parseJSON
          = withObject "FloodlightActivityPublisherDynamicTag"
              (\ o ->
                 FloodlightActivityPublisherDynamicTag <$>
                   (o .:? "clickThrough") <*>
                     (o .:? "siteIdDimensionValue")
                     <*> (o .:? "dynamicTag")
                     <*> (o .:? "directorySiteId")
                     <*> (o .:? "siteId")
                     <*> (o .:? "viewThrough"))

instance ToJSON FloodlightActivityPublisherDynamicTag
         where
        toJSON FloodlightActivityPublisherDynamicTag{..}
          = object
              (catMaybes
                 [("clickThrough" .=) <$> _fapdtClickThrough,
                  ("siteIdDimensionValue" .=) <$>
                    _fapdtSiteIdDimensionValue,
                  ("dynamicTag" .=) <$> _fapdtDynamicTag,
                  ("directorySiteId" .=) <$> _fapdtDirectorySiteId,
                  ("siteId" .=) <$> _fapdtSiteId,
                  ("viewThrough" .=) <$> _fapdtViewThrough])

-- | Contains properties of a Floodlight configuration.
--
-- /See:/ 'floodlightConfiguration' smart constructor.
data FloodlightConfiguration = FloodlightConfiguration
    { _fcTagSettings                              :: !(Maybe (Maybe TagSettings))
    , _fcExposureToConversionEnabled              :: !(Maybe Bool)
    , _fcInAppAttributionTrackingEnabled          :: !(Maybe Bool)
    , _fcThirdPartyAuthenticationTokens           :: !(Maybe [Maybe ThirdPartyAuthenticationToken])
    , _fcKind                                     :: !Text
    , _fcAdvertiserId                             :: !(Maybe Int64)
    , _fcAnalyticsDataSharingEnabled              :: !(Maybe Bool)
    , _fcAdvertiserIdDimensionValue               :: !(Maybe (Maybe DimensionValue))
    , _fcIdDimensionValue                         :: !(Maybe (Maybe DimensionValue))
    , _fcLookbackConfiguration                    :: !(Maybe (Maybe LookbackConfiguration))
    , _fcAccountId                                :: !(Maybe Int64)
    , _fcId                                       :: !(Maybe Int64)
    , _fcSslRequired                              :: !(Maybe Bool)
    , _fcNaturalSearchConversionAttributionOption :: !(Maybe FloodlightConfigurationNaturalSearchConversionAttributionOption)
    , _fcUserDefinedVariableConfigurations        :: !(Maybe [Maybe UserDefinedVariableConfiguration])
    , _fcSubaccountId                             :: !(Maybe Int64)
    , _fcFirstDayOfWeek                           :: !(Maybe FloodlightConfigurationFirstDayOfWeek)
    , _fcOmnitureSettings                         :: !(Maybe (Maybe OmnitureSettings))
    , _fcStandardVariableTypes                    :: !(Maybe [FloodlightConfigurationItemStandardVariableTypes])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcTagSettings'
--
-- * 'fcExposureToConversionEnabled'
--
-- * 'fcInAppAttributionTrackingEnabled'
--
-- * 'fcThirdPartyAuthenticationTokens'
--
-- * 'fcKind'
--
-- * 'fcAdvertiserId'
--
-- * 'fcAnalyticsDataSharingEnabled'
--
-- * 'fcAdvertiserIdDimensionValue'
--
-- * 'fcIdDimensionValue'
--
-- * 'fcLookbackConfiguration'
--
-- * 'fcAccountId'
--
-- * 'fcId'
--
-- * 'fcSslRequired'
--
-- * 'fcNaturalSearchConversionAttributionOption'
--
-- * 'fcUserDefinedVariableConfigurations'
--
-- * 'fcSubaccountId'
--
-- * 'fcFirstDayOfWeek'
--
-- * 'fcOmnitureSettings'
--
-- * 'fcStandardVariableTypes'
floodlightConfiguration
    :: FloodlightConfiguration
floodlightConfiguration =
    FloodlightConfiguration
    { _fcTagSettings = Nothing
    , _fcExposureToConversionEnabled = Nothing
    , _fcInAppAttributionTrackingEnabled = Nothing
    , _fcThirdPartyAuthenticationTokens = Nothing
    , _fcKind = "dfareporting#floodlightConfiguration"
    , _fcAdvertiserId = Nothing
    , _fcAnalyticsDataSharingEnabled = Nothing
    , _fcAdvertiserIdDimensionValue = Nothing
    , _fcIdDimensionValue = Nothing
    , _fcLookbackConfiguration = Nothing
    , _fcAccountId = Nothing
    , _fcId = Nothing
    , _fcSslRequired = Nothing
    , _fcNaturalSearchConversionAttributionOption = Nothing
    , _fcUserDefinedVariableConfigurations = Nothing
    , _fcSubaccountId = Nothing
    , _fcFirstDayOfWeek = Nothing
    , _fcOmnitureSettings = Nothing
    , _fcStandardVariableTypes = Nothing
    }

-- | Configuration settings for dynamic and image floodlight tags.
fcTagSettings :: Lens' FloodlightConfiguration (Maybe (Maybe TagSettings))
fcTagSettings
  = lens _fcTagSettings
      (\ s a -> s{_fcTagSettings = a})

-- | Whether the exposure-to-conversion report is enabled. This report shows
-- detailed pathway information on up to 10 of the most recent ad exposures
-- seen by a user before converting.
fcExposureToConversionEnabled :: Lens' FloodlightConfiguration (Maybe Bool)
fcExposureToConversionEnabled
  = lens _fcExposureToConversionEnabled
      (\ s a -> s{_fcExposureToConversionEnabled = a})

-- | Whether in-app attribution tracking is enabled.
fcInAppAttributionTrackingEnabled :: Lens' FloodlightConfiguration (Maybe Bool)
fcInAppAttributionTrackingEnabled
  = lens _fcInAppAttributionTrackingEnabled
      (\ s a -> s{_fcInAppAttributionTrackingEnabled = a})

-- | List of third-party authentication tokens enabled for this
-- configuration.
fcThirdPartyAuthenticationTokens :: Lens' FloodlightConfiguration [Maybe ThirdPartyAuthenticationToken]
fcThirdPartyAuthenticationTokens
  = lens _fcThirdPartyAuthenticationTokens
      (\ s a -> s{_fcThirdPartyAuthenticationTokens = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightConfiguration\".
fcKind :: Lens' FloodlightConfiguration Text
fcKind = lens _fcKind (\ s a -> s{_fcKind = a})

-- | Advertiser ID of the parent advertiser of this floodlight configuration.
fcAdvertiserId :: Lens' FloodlightConfiguration (Maybe Int64)
fcAdvertiserId
  = lens _fcAdvertiserId
      (\ s a -> s{_fcAdvertiserId = a})

-- | Whether advertiser data is shared with Google Analytics.
fcAnalyticsDataSharingEnabled :: Lens' FloodlightConfiguration (Maybe Bool)
fcAnalyticsDataSharingEnabled
  = lens _fcAnalyticsDataSharingEnabled
      (\ s a -> s{_fcAnalyticsDataSharingEnabled = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
fcAdvertiserIdDimensionValue :: Lens' FloodlightConfiguration (Maybe (Maybe DimensionValue))
fcAdvertiserIdDimensionValue
  = lens _fcAdvertiserIdDimensionValue
      (\ s a -> s{_fcAdvertiserIdDimensionValue = a})

-- | Dimension value for the ID of this floodlight configuration. This is a
-- read-only, auto-generated field.
fcIdDimensionValue :: Lens' FloodlightConfiguration (Maybe (Maybe DimensionValue))
fcIdDimensionValue
  = lens _fcIdDimensionValue
      (\ s a -> s{_fcIdDimensionValue = a})

-- | Lookback window settings for this floodlight configuration.
fcLookbackConfiguration :: Lens' FloodlightConfiguration (Maybe (Maybe LookbackConfiguration))
fcLookbackConfiguration
  = lens _fcLookbackConfiguration
      (\ s a -> s{_fcLookbackConfiguration = a})

-- | Account ID of this floodlight configuration. This is a read-only field
-- that can be left blank.
fcAccountId :: Lens' FloodlightConfiguration (Maybe Int64)
fcAccountId
  = lens _fcAccountId (\ s a -> s{_fcAccountId = a})

-- | ID of this floodlight configuration. This is a read-only, auto-generated
-- field.
fcId :: Lens' FloodlightConfiguration (Maybe Int64)
fcId = lens _fcId (\ s a -> s{_fcId = a})

-- | Whether floodlight activities owned by this configuration are required
-- to be SSL-compliant.
fcSslRequired :: Lens' FloodlightConfiguration (Maybe Bool)
fcSslRequired
  = lens _fcSslRequired
      (\ s a -> s{_fcSslRequired = a})

-- | Types of attribution options for natural search conversions.
fcNaturalSearchConversionAttributionOption :: Lens' FloodlightConfiguration (Maybe FloodlightConfigurationNaturalSearchConversionAttributionOption)
fcNaturalSearchConversionAttributionOption
  = lens _fcNaturalSearchConversionAttributionOption
      (\ s a ->
         s{_fcNaturalSearchConversionAttributionOption = a})

-- | List of user defined variables enabled for this configuration.
fcUserDefinedVariableConfigurations :: Lens' FloodlightConfiguration [Maybe UserDefinedVariableConfiguration]
fcUserDefinedVariableConfigurations
  = lens _fcUserDefinedVariableConfigurations
      (\ s a ->
         s{_fcUserDefinedVariableConfigurations = a})
      . _Default
      . _Coerce

-- | Subaccount ID of this floodlight configuration. This is a read-only
-- field that can be left blank.
fcSubaccountId :: Lens' FloodlightConfiguration (Maybe Int64)
fcSubaccountId
  = lens _fcSubaccountId
      (\ s a -> s{_fcSubaccountId = a})

-- | Day that will be counted as the first day of the week in reports. This
-- is a required field.
fcFirstDayOfWeek :: Lens' FloodlightConfiguration (Maybe FloodlightConfigurationFirstDayOfWeek)
fcFirstDayOfWeek
  = lens _fcFirstDayOfWeek
      (\ s a -> s{_fcFirstDayOfWeek = a})

-- | Settings for DCM Omniture integration.
fcOmnitureSettings :: Lens' FloodlightConfiguration (Maybe (Maybe OmnitureSettings))
fcOmnitureSettings
  = lens _fcOmnitureSettings
      (\ s a -> s{_fcOmnitureSettings = a})

-- | List of standard variables enabled for this configuration. Acceptable
-- values are: - \"ORD\" - \"NUM\"
fcStandardVariableTypes :: Lens' FloodlightConfiguration [FloodlightConfigurationItemStandardVariableTypes]
fcStandardVariableTypes
  = lens _fcStandardVariableTypes
      (\ s a -> s{_fcStandardVariableTypes = a})
      . _Default
      . _Coerce

instance FromJSON FloodlightConfiguration where
        parseJSON
          = withObject "FloodlightConfiguration"
              (\ o ->
                 FloodlightConfiguration <$>
                   (o .:? "tagSettings") <*>
                     (o .:? "exposureToConversionEnabled")
                     <*> (o .:? "inAppAttributionTrackingEnabled")
                     <*>
                     (o .:? "thirdPartyAuthenticationTokens" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#floodlightConfiguration")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "analyticsDataSharingEnabled")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "lookbackConfiguration")
                     <*> (o .:? "accountId")
                     <*> (o .:? "id")
                     <*> (o .:? "sslRequired")
                     <*>
                     (o .:? "naturalSearchConversionAttributionOption")
                     <*>
                     (o .:? "userDefinedVariableConfigurations" .!=
                        mempty)
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "firstDayOfWeek")
                     <*> (o .:? "omnitureSettings")
                     <*> (o .:? "standardVariableTypes" .!= mempty))

instance ToJSON FloodlightConfiguration where
        toJSON FloodlightConfiguration{..}
          = object
              (catMaybes
                 [("tagSettings" .=) <$> _fcTagSettings,
                  ("exposureToConversionEnabled" .=) <$>
                    _fcExposureToConversionEnabled,
                  ("inAppAttributionTrackingEnabled" .=) <$>
                    _fcInAppAttributionTrackingEnabled,
                  ("thirdPartyAuthenticationTokens" .=) <$>
                    _fcThirdPartyAuthenticationTokens,
                  Just ("kind" .= _fcKind),
                  ("advertiserId" .=) <$> _fcAdvertiserId,
                  ("analyticsDataSharingEnabled" .=) <$>
                    _fcAnalyticsDataSharingEnabled,
                  ("advertiserIdDimensionValue" .=) <$>
                    _fcAdvertiserIdDimensionValue,
                  ("idDimensionValue" .=) <$> _fcIdDimensionValue,
                  ("lookbackConfiguration" .=) <$>
                    _fcLookbackConfiguration,
                  ("accountId" .=) <$> _fcAccountId,
                  ("id" .=) <$> _fcId,
                  ("sslRequired" .=) <$> _fcSslRequired,
                  ("naturalSearchConversionAttributionOption" .=) <$>
                    _fcNaturalSearchConversionAttributionOption,
                  ("userDefinedVariableConfigurations" .=) <$>
                    _fcUserDefinedVariableConfigurations,
                  ("subaccountId" .=) <$> _fcSubaccountId,
                  ("firstDayOfWeek" .=) <$> _fcFirstDayOfWeek,
                  ("omnitureSettings" .=) <$> _fcOmnitureSettings,
                  ("standardVariableTypes" .=) <$>
                    _fcStandardVariableTypes])

-- | Floodlight Configuration List Response
--
-- /See:/ 'floodlightConfigurationsListResponse' smart constructor.
data FloodlightConfigurationsListResponse = FloodlightConfigurationsListResponse
    { _fclrKind                     :: !Text
    , _fclrFloodlightConfigurations :: !(Maybe [Maybe FloodlightConfiguration])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fclrKind'
--
-- * 'fclrFloodlightConfigurations'
floodlightConfigurationsListResponse
    :: FloodlightConfigurationsListResponse
floodlightConfigurationsListResponse =
    FloodlightConfigurationsListResponse
    { _fclrKind = "dfareporting#floodlightConfigurationsListResponse"
    , _fclrFloodlightConfigurations = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#floodlightConfigurationsListResponse\".
fclrKind :: Lens' FloodlightConfigurationsListResponse Text
fclrKind = lens _fclrKind (\ s a -> s{_fclrKind = a})

-- | Floodlight configuration collection.
fclrFloodlightConfigurations :: Lens' FloodlightConfigurationsListResponse [Maybe FloodlightConfiguration]
fclrFloodlightConfigurations
  = lens _fclrFloodlightConfigurations
      (\ s a -> s{_fclrFloodlightConfigurations = a})
      . _Default
      . _Coerce

instance FromJSON
         FloodlightConfigurationsListResponse where
        parseJSON
          = withObject "FloodlightConfigurationsListResponse"
              (\ o ->
                 FloodlightConfigurationsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#floodlightConfigurationsListResponse")
                     <*> (o .:? "floodlightConfigurations" .!= mempty))

instance ToJSON FloodlightConfigurationsListResponse
         where
        toJSON FloodlightConfigurationsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _fclrKind),
                  ("floodlightConfigurations" .=) <$>
                    _fclrFloodlightConfigurations])

-- | Represents fields that are compatible to be selected for a report of
-- type \"FlOODLIGHT\".
--
-- /See:/ 'floodlightReportCompatibleFields' smart constructor.
data FloodlightReportCompatibleFields = FloodlightReportCompatibleFields
    { _frcfMetrics          :: !(Maybe [Maybe Metric])
    , _frcfKind             :: !Text
    , _frcfDimensionFilters :: !(Maybe [Maybe Dimension])
    , _frcfDimensions       :: !(Maybe [Maybe Dimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightReportCompatibleFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frcfMetrics'
--
-- * 'frcfKind'
--
-- * 'frcfDimensionFilters'
--
-- * 'frcfDimensions'
floodlightReportCompatibleFields
    :: FloodlightReportCompatibleFields
floodlightReportCompatibleFields =
    FloodlightReportCompatibleFields
    { _frcfMetrics = Nothing
    , _frcfKind = "dfareporting#floodlightReportCompatibleFields"
    , _frcfDimensionFilters = Nothing
    , _frcfDimensions = Nothing
    }

-- | Metrics which are compatible to be selected in the \"metricNames\"
-- section of the report.
frcfMetrics :: Lens' FloodlightReportCompatibleFields [Maybe Metric]
frcfMetrics
  = lens _frcfMetrics (\ s a -> s{_frcfMetrics = a}) .
      _Default
      . _Coerce

-- | The kind of resource this is, in this case
-- dfareporting#floodlightReportCompatibleFields.
frcfKind :: Lens' FloodlightReportCompatibleFields Text
frcfKind = lens _frcfKind (\ s a -> s{_frcfKind = a})

-- | Dimensions which are compatible to be selected in the
-- \"dimensionFilters\" section of the report.
frcfDimensionFilters :: Lens' FloodlightReportCompatibleFields [Maybe Dimension]
frcfDimensionFilters
  = lens _frcfDimensionFilters
      (\ s a -> s{_frcfDimensionFilters = a})
      . _Default
      . _Coerce

-- | Dimensions which are compatible to be selected in the \"dimensions\"
-- section of the report.
frcfDimensions :: Lens' FloodlightReportCompatibleFields [Maybe Dimension]
frcfDimensions
  = lens _frcfDimensions
      (\ s a -> s{_frcfDimensions = a})
      . _Default
      . _Coerce

instance FromJSON FloodlightReportCompatibleFields
         where
        parseJSON
          = withObject "FloodlightReportCompatibleFields"
              (\ o ->
                 FloodlightReportCompatibleFields <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#floodlightReportCompatibleFields")
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON FloodlightReportCompatibleFields
         where
        toJSON FloodlightReportCompatibleFields{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _frcfMetrics,
                  Just ("kind" .= _frcfKind),
                  ("dimensionFilters" .=) <$> _frcfDimensionFilters,
                  ("dimensions" .=) <$> _frcfDimensions])

-- | Frequency Cap.
--
-- /See:/ 'frequencyCap' smart constructor.
data FrequencyCap = FrequencyCap
    { _fcImpressions :: !(Maybe Int64)
    , _fcDuration    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FrequencyCap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcImpressions'
--
-- * 'fcDuration'
frequencyCap
    :: FrequencyCap
frequencyCap =
    FrequencyCap
    { _fcImpressions = Nothing
    , _fcDuration = Nothing
    }

-- | Number of times an individual user can be served the ad within the
-- specified duration. The maximum allowed is 15.
fcImpressions :: Lens' FrequencyCap (Maybe Int64)
fcImpressions
  = lens _fcImpressions
      (\ s a -> s{_fcImpressions = a})

-- | Duration of time, in seconds, for this frequency cap. The maximum
-- duration is 90 days in seconds, or 7,776,000.
fcDuration :: Lens' FrequencyCap (Maybe Int64)
fcDuration
  = lens _fcDuration (\ s a -> s{_fcDuration = a})

instance FromJSON FrequencyCap where
        parseJSON
          = withObject "FrequencyCap"
              (\ o ->
                 FrequencyCap <$>
                   (o .:? "impressions") <*> (o .:? "duration"))

instance ToJSON FrequencyCap where
        toJSON FrequencyCap{..}
          = object
              (catMaybes
                 [("impressions" .=) <$> _fcImpressions,
                  ("duration" .=) <$> _fcDuration])

-- | FsCommand.
--
-- /See:/ 'fsCommand' smart constructor.
data FsCommand = FsCommand
    { _fcPositionOption :: !(Maybe FsCommandPositionOption)
    , _fcLeft           :: !(Maybe Int32)
    , _fcWindowHeight   :: !(Maybe Int32)
    , _fcWindowWidth    :: !(Maybe Int32)
    , _fcTop            :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FsCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcPositionOption'
--
-- * 'fcLeft'
--
-- * 'fcWindowHeight'
--
-- * 'fcWindowWidth'
--
-- * 'fcTop'
fsCommand
    :: FsCommand
fsCommand =
    FsCommand
    { _fcPositionOption = Nothing
    , _fcLeft = Nothing
    , _fcWindowHeight = Nothing
    , _fcWindowWidth = Nothing
    , _fcTop = Nothing
    }

-- | Position in the browser where the window will open.
fcPositionOption :: Lens' FsCommand (Maybe FsCommandPositionOption)
fcPositionOption
  = lens _fcPositionOption
      (\ s a -> s{_fcPositionOption = a})

-- | Distance from the left of the browser.Applicable when positionOption is
-- DISTANCE_FROM_TOP_LEFT_CORNER.
fcLeft :: Lens' FsCommand (Maybe Int32)
fcLeft = lens _fcLeft (\ s a -> s{_fcLeft = a})

-- | Height of the window.
fcWindowHeight :: Lens' FsCommand (Maybe Int32)
fcWindowHeight
  = lens _fcWindowHeight
      (\ s a -> s{_fcWindowHeight = a})

-- | Width of the window.
fcWindowWidth :: Lens' FsCommand (Maybe Int32)
fcWindowWidth
  = lens _fcWindowWidth
      (\ s a -> s{_fcWindowWidth = a})

-- | Distance from the top of the browser. Applicable when positionOption is
-- DISTANCE_FROM_TOP_LEFT_CORNER.
fcTop :: Lens' FsCommand (Maybe Int32)
fcTop = lens _fcTop (\ s a -> s{_fcTop = a})

instance FromJSON FsCommand where
        parseJSON
          = withObject "FsCommand"
              (\ o ->
                 FsCommand <$>
                   (o .:? "positionOption") <*> (o .:? "left") <*>
                     (o .:? "windowHeight")
                     <*> (o .:? "windowWidth")
                     <*> (o .:? "top"))

instance ToJSON FsCommand where
        toJSON FsCommand{..}
          = object
              (catMaybes
                 [("positionOption" .=) <$> _fcPositionOption,
                  ("left" .=) <$> _fcLeft,
                  ("windowHeight" .=) <$> _fcWindowHeight,
                  ("windowWidth" .=) <$> _fcWindowWidth,
                  ("top" .=) <$> _fcTop])

-- | Geographical Targeting.
--
-- /See:/ 'geoTargeting' smart constructor.
data GeoTargeting = GeoTargeting
    { _gtRegions          :: !(Maybe [Maybe Region])
    , _gtCountries        :: !(Maybe [Maybe Country])
    , _gtCities           :: !(Maybe [Maybe City])
    , _gtMetros           :: !(Maybe [Maybe Metro])
    , _gtExcludeCountries :: !(Maybe Bool)
    , _gtPostalCodes      :: !(Maybe [Maybe PostalCode])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtRegions'
--
-- * 'gtCountries'
--
-- * 'gtCities'
--
-- * 'gtMetros'
--
-- * 'gtExcludeCountries'
--
-- * 'gtPostalCodes'
geoTargeting
    :: GeoTargeting
geoTargeting =
    GeoTargeting
    { _gtRegions = Nothing
    , _gtCountries = Nothing
    , _gtCities = Nothing
    , _gtMetros = Nothing
    , _gtExcludeCountries = Nothing
    , _gtPostalCodes = Nothing
    }

-- | Regions to be targeted. For each region only dartId is required. The
-- other fields are populated automatically when the ad is inserted or
-- updated. If targeting a region, do not target or exclude the country of
-- the region.
gtRegions :: Lens' GeoTargeting [Maybe Region]
gtRegions
  = lens _gtRegions (\ s a -> s{_gtRegions = a}) .
      _Default
      . _Coerce

-- | Countries to be targeted or excluded from targeting, depending on the
-- setting of the excludeCountries field. For each country only dartId is
-- required. The other fields are populated automatically when the ad is
-- inserted or updated. If targeting or excluding a country, do not target
-- regions, cities, metros, or postal codes in the same country.
gtCountries :: Lens' GeoTargeting [Maybe Country]
gtCountries
  = lens _gtCountries (\ s a -> s{_gtCountries = a}) .
      _Default
      . _Coerce

-- | Cities to be targeted. For each city only dartId is required. The other
-- fields are populated automatically when the ad is inserted or updated.
-- If targeting a city, do not target or exclude the country of the city,
-- and do not target the metro or region of the city.
gtCities :: Lens' GeoTargeting [Maybe City]
gtCities
  = lens _gtCities (\ s a -> s{_gtCities = a}) .
      _Default
      . _Coerce

-- | Metros to be targeted. For each metro only dmaId is required. The other
-- fields are populated automatically when the ad is inserted or updated.
-- If targeting a metro, do not target or exclude the country of the metro.
gtMetros :: Lens' GeoTargeting [Maybe Metro]
gtMetros
  = lens _gtMetros (\ s a -> s{_gtMetros = a}) .
      _Default
      . _Coerce

-- | Whether or not to exclude the countries in the countries field from
-- targeting. If false, the countries field refers to countries which will
-- be targeted by the ad.
gtExcludeCountries :: Lens' GeoTargeting (Maybe Bool)
gtExcludeCountries
  = lens _gtExcludeCountries
      (\ s a -> s{_gtExcludeCountries = a})

-- | Postal codes to be targeted. For each postal code only id is required.
-- The other fields are populated automatically when the ad is inserted or
-- updated. If targeting a postal code, do not target or exclude the
-- country of the postal code.
gtPostalCodes :: Lens' GeoTargeting [Maybe PostalCode]
gtPostalCodes
  = lens _gtPostalCodes
      (\ s a -> s{_gtPostalCodes = a})
      . _Default
      . _Coerce

instance FromJSON GeoTargeting where
        parseJSON
          = withObject "GeoTargeting"
              (\ o ->
                 GeoTargeting <$>
                   (o .:? "regions" .!= mempty) <*>
                     (o .:? "countries" .!= mempty)
                     <*> (o .:? "cities" .!= mempty)
                     <*> (o .:? "metros" .!= mempty)
                     <*> (o .:? "excludeCountries")
                     <*> (o .:? "postalCodes" .!= mempty))

instance ToJSON GeoTargeting where
        toJSON GeoTargeting{..}
          = object
              (catMaybes
                 [("regions" .=) <$> _gtRegions,
                  ("countries" .=) <$> _gtCountries,
                  ("cities" .=) <$> _gtCities,
                  ("metros" .=) <$> _gtMetros,
                  ("excludeCountries" .=) <$> _gtExcludeCountries,
                  ("postalCodes" .=) <$> _gtPostalCodes])

-- | Represents a buy from the DoubleClick Planning inventory store.
--
-- /See:/ 'inventoryItem' smart constructor.
data InventoryItem = InventoryItem
    { _iiPlacementStrategyId       :: !(Maybe Int64)
    , _iiEstimatedClickThroughRate :: !(Maybe Int64)
    , _iiPricing                   :: !(Maybe (Maybe Pricing))
    , _iiKind                      :: !Text
    , _iiAdvertiserId              :: !(Maybe Int64)
    , _iiRfpId                     :: !(Maybe Int64)
    , _iiContentCategoryId         :: !(Maybe Int64)
    , _iiInPlan                    :: !(Maybe Bool)
    , _iiAccountId                 :: !(Maybe Int64)
    , _iiName                      :: !(Maybe Text)
    , _iiAdSlots                   :: !(Maybe [Maybe AdSlot])
    , _iiNegotiationChannelId      :: !(Maybe Int64)
    , _iiLastModifiedInfo          :: !(Maybe (Maybe LastModifiedInfo))
    , _iiId                        :: !(Maybe Int64)
    , _iiEstimatedConversionRate   :: !(Maybe Int64)
    , _iiProjectId                 :: !(Maybe Int64)
    , _iiSubaccountId              :: !(Maybe Int64)
    , _iiOrderId                   :: !(Maybe Int64)
    , _iiSiteId                    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiPlacementStrategyId'
--
-- * 'iiEstimatedClickThroughRate'
--
-- * 'iiPricing'
--
-- * 'iiKind'
--
-- * 'iiAdvertiserId'
--
-- * 'iiRfpId'
--
-- * 'iiContentCategoryId'
--
-- * 'iiInPlan'
--
-- * 'iiAccountId'
--
-- * 'iiName'
--
-- * 'iiAdSlots'
--
-- * 'iiNegotiationChannelId'
--
-- * 'iiLastModifiedInfo'
--
-- * 'iiId'
--
-- * 'iiEstimatedConversionRate'
--
-- * 'iiProjectId'
--
-- * 'iiSubaccountId'
--
-- * 'iiOrderId'
--
-- * 'iiSiteId'
inventoryItem
    :: InventoryItem
inventoryItem =
    InventoryItem
    { _iiPlacementStrategyId = Nothing
    , _iiEstimatedClickThroughRate = Nothing
    , _iiPricing = Nothing
    , _iiKind = "dfareporting#inventoryItem"
    , _iiAdvertiserId = Nothing
    , _iiRfpId = Nothing
    , _iiContentCategoryId = Nothing
    , _iiInPlan = Nothing
    , _iiAccountId = Nothing
    , _iiName = Nothing
    , _iiAdSlots = Nothing
    , _iiNegotiationChannelId = Nothing
    , _iiLastModifiedInfo = Nothing
    , _iiId = Nothing
    , _iiEstimatedConversionRate = Nothing
    , _iiProjectId = Nothing
    , _iiSubaccountId = Nothing
    , _iiOrderId = Nothing
    , _iiSiteId = Nothing
    }

-- | Placement strategy ID of this inventory item.
iiPlacementStrategyId :: Lens' InventoryItem (Maybe Int64)
iiPlacementStrategyId
  = lens _iiPlacementStrategyId
      (\ s a -> s{_iiPlacementStrategyId = a})

-- | Estimated click-through rate of this inventory item.
iiEstimatedClickThroughRate :: Lens' InventoryItem (Maybe Int64)
iiEstimatedClickThroughRate
  = lens _iiEstimatedClickThroughRate
      (\ s a -> s{_iiEstimatedClickThroughRate = a})

-- | Pricing of this inventory item.
iiPricing :: Lens' InventoryItem (Maybe (Maybe Pricing))
iiPricing
  = lens _iiPricing (\ s a -> s{_iiPricing = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#inventoryItem\".
iiKind :: Lens' InventoryItem Text
iiKind = lens _iiKind (\ s a -> s{_iiKind = a})

-- | Advertiser ID of this inventory item.
iiAdvertiserId :: Lens' InventoryItem (Maybe Int64)
iiAdvertiserId
  = lens _iiAdvertiserId
      (\ s a -> s{_iiAdvertiserId = a})

-- | RFP ID of this inventory item.
iiRfpId :: Lens' InventoryItem (Maybe Int64)
iiRfpId = lens _iiRfpId (\ s a -> s{_iiRfpId = a})

-- | Content category ID of this inventory item.
iiContentCategoryId :: Lens' InventoryItem (Maybe Int64)
iiContentCategoryId
  = lens _iiContentCategoryId
      (\ s a -> s{_iiContentCategoryId = a})

-- | Whether this inventory item is in plan.
iiInPlan :: Lens' InventoryItem (Maybe Bool)
iiInPlan = lens _iiInPlan (\ s a -> s{_iiInPlan = a})

-- | Account ID of this inventory item.
iiAccountId :: Lens' InventoryItem (Maybe Int64)
iiAccountId
  = lens _iiAccountId (\ s a -> s{_iiAccountId = a})

-- | Name of this inventory item. For standalone inventory items, this is the
-- same name as that of its only ad slot. For group inventory items, this
-- can differ from the name of any of its ad slots.
iiName :: Lens' InventoryItem (Maybe Text)
iiName = lens _iiName (\ s a -> s{_iiName = a})

-- | Ad slots of this inventory item. If this inventory item represents a
-- standalone placement, there will be exactly one ad slot. If this
-- inventory item represents a placement group, there will be more than one
-- ad slot, each representing one child placement in that placement group.
iiAdSlots :: Lens' InventoryItem [Maybe AdSlot]
iiAdSlots
  = lens _iiAdSlots (\ s a -> s{_iiAdSlots = a}) .
      _Default
      . _Coerce

-- | Negotiation channel ID of this inventory item.
iiNegotiationChannelId :: Lens' InventoryItem (Maybe Int64)
iiNegotiationChannelId
  = lens _iiNegotiationChannelId
      (\ s a -> s{_iiNegotiationChannelId = a})

-- | Information about the most recent modification of this inventory item.
iiLastModifiedInfo :: Lens' InventoryItem (Maybe (Maybe LastModifiedInfo))
iiLastModifiedInfo
  = lens _iiLastModifiedInfo
      (\ s a -> s{_iiLastModifiedInfo = a})

-- | ID of this inventory item.
iiId :: Lens' InventoryItem (Maybe Int64)
iiId = lens _iiId (\ s a -> s{_iiId = a})

-- | Estimated conversion rate of this inventory item.
iiEstimatedConversionRate :: Lens' InventoryItem (Maybe Int64)
iiEstimatedConversionRate
  = lens _iiEstimatedConversionRate
      (\ s a -> s{_iiEstimatedConversionRate = a})

-- | Project ID of this inventory item.
iiProjectId :: Lens' InventoryItem (Maybe Int64)
iiProjectId
  = lens _iiProjectId (\ s a -> s{_iiProjectId = a})

-- | Subaccount ID of this inventory item.
iiSubaccountId :: Lens' InventoryItem (Maybe Int64)
iiSubaccountId
  = lens _iiSubaccountId
      (\ s a -> s{_iiSubaccountId = a})

-- | Order ID of this inventory item.
iiOrderId :: Lens' InventoryItem (Maybe Int64)
iiOrderId
  = lens _iiOrderId (\ s a -> s{_iiOrderId = a})

-- | ID of the site this inventory item is associated with.
iiSiteId :: Lens' InventoryItem (Maybe Int64)
iiSiteId = lens _iiSiteId (\ s a -> s{_iiSiteId = a})

instance FromJSON InventoryItem where
        parseJSON
          = withObject "InventoryItem"
              (\ o ->
                 InventoryItem <$>
                   (o .:? "placementStrategyId") <*>
                     (o .:? "estimatedClickThroughRate")
                     <*> (o .:? "pricing")
                     <*> (o .:? "kind" .!= "dfareporting#inventoryItem")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "rfpId")
                     <*> (o .:? "contentCategoryId")
                     <*> (o .:? "inPlan")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "adSlots" .!= mempty)
                     <*> (o .:? "negotiationChannelId")
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "estimatedConversionRate")
                     <*> (o .:? "projectId")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "orderId")
                     <*> (o .:? "siteId"))

instance ToJSON InventoryItem where
        toJSON InventoryItem{..}
          = object
              (catMaybes
                 [("placementStrategyId" .=) <$>
                    _iiPlacementStrategyId,
                  ("estimatedClickThroughRate" .=) <$>
                    _iiEstimatedClickThroughRate,
                  ("pricing" .=) <$> _iiPricing,
                  Just ("kind" .= _iiKind),
                  ("advertiserId" .=) <$> _iiAdvertiserId,
                  ("rfpId" .=) <$> _iiRfpId,
                  ("contentCategoryId" .=) <$> _iiContentCategoryId,
                  ("inPlan" .=) <$> _iiInPlan,
                  ("accountId" .=) <$> _iiAccountId,
                  ("name" .=) <$> _iiName,
                  ("adSlots" .=) <$> _iiAdSlots,
                  ("negotiationChannelId" .=) <$>
                    _iiNegotiationChannelId,
                  ("lastModifiedInfo" .=) <$> _iiLastModifiedInfo,
                  ("id" .=) <$> _iiId,
                  ("estimatedConversionRate" .=) <$>
                    _iiEstimatedConversionRate,
                  ("projectId" .=) <$> _iiProjectId,
                  ("subaccountId" .=) <$> _iiSubaccountId,
                  ("orderId" .=) <$> _iiOrderId,
                  ("siteId" .=) <$> _iiSiteId])

-- | Inventory item List Response
--
-- /See:/ 'inventoryItemsListResponse' smart constructor.
data InventoryItemsListResponse = InventoryItemsListResponse
    { _iilrInventoryItems :: !(Maybe [Maybe InventoryItem])
    , _iilrNextPageToken  :: !(Maybe Text)
    , _iilrKind           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iilrInventoryItems'
--
-- * 'iilrNextPageToken'
--
-- * 'iilrKind'
inventoryItemsListResponse
    :: InventoryItemsListResponse
inventoryItemsListResponse =
    InventoryItemsListResponse
    { _iilrInventoryItems = Nothing
    , _iilrNextPageToken = Nothing
    , _iilrKind = "dfareporting#inventoryItemsListResponse"
    }

-- | Inventory item collection
iilrInventoryItems :: Lens' InventoryItemsListResponse [Maybe InventoryItem]
iilrInventoryItems
  = lens _iilrInventoryItems
      (\ s a -> s{_iilrInventoryItems = a})
      . _Default
      . _Coerce

-- | Pagination token to be used for the next list operation.
iilrNextPageToken :: Lens' InventoryItemsListResponse (Maybe Text)
iilrNextPageToken
  = lens _iilrNextPageToken
      (\ s a -> s{_iilrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#inventoryItemsListResponse\".
iilrKind :: Lens' InventoryItemsListResponse Text
iilrKind = lens _iilrKind (\ s a -> s{_iilrKind = a})

instance FromJSON InventoryItemsListResponse where
        parseJSON
          = withObject "InventoryItemsListResponse"
              (\ o ->
                 InventoryItemsListResponse <$>
                   (o .:? "inventoryItems" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#inventoryItemsListResponse"))

instance ToJSON InventoryItemsListResponse where
        toJSON InventoryItemsListResponse{..}
          = object
              (catMaybes
                 [("inventoryItems" .=) <$> _iilrInventoryItems,
                  ("nextPageToken" .=) <$> _iilrNextPageToken,
                  Just ("kind" .= _iilrKind)])

-- | Key Value Targeting Expression.
--
-- /See:/ 'keyValueTargetingExpression' smart constructor.
newtype KeyValueTargetingExpression = KeyValueTargetingExpression
    { _kvteExpression :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'KeyValueTargetingExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kvteExpression'
keyValueTargetingExpression
    :: KeyValueTargetingExpression
keyValueTargetingExpression =
    KeyValueTargetingExpression
    { _kvteExpression = Nothing
    }

-- | Keyword expression being targeted by the ad.
kvteExpression :: Lens' KeyValueTargetingExpression (Maybe Text)
kvteExpression
  = lens _kvteExpression
      (\ s a -> s{_kvteExpression = a})

instance FromJSON KeyValueTargetingExpression where
        parseJSON
          = withObject "KeyValueTargetingExpression"
              (\ o ->
                 KeyValueTargetingExpression <$> (o .:? "expression"))

instance ToJSON KeyValueTargetingExpression where
        toJSON KeyValueTargetingExpression{..}
          = object
              (catMaybes [("expression" .=) <$> _kvteExpression])

-- | Contains information about where a user\'s browser is taken after the
-- user clicks an ad.
--
-- /See:/ 'landingPage' smart constructor.
data LandingPage = LandingPage
    { _lpKind    :: !Text
    , _lpDefault :: !(Maybe Bool)
    , _lpUrl     :: !(Maybe Text)
    , _lpName    :: !(Maybe Text)
    , _lpId      :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpKind'
--
-- * 'lpDefault'
--
-- * 'lpUrl'
--
-- * 'lpName'
--
-- * 'lpId'
landingPage
    :: LandingPage
landingPage =
    LandingPage
    { _lpKind = "dfareporting#landingPage"
    , _lpDefault = Nothing
    , _lpUrl = Nothing
    , _lpName = Nothing
    , _lpId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#landingPage\".
lpKind :: Lens' LandingPage Text
lpKind = lens _lpKind (\ s a -> s{_lpKind = a})

-- | Whether or not this landing page will be assigned to any ads or
-- creatives that do not have a landing page assigned explicitly. Only one
-- default landing page is allowed per campaign.
lpDefault :: Lens' LandingPage (Maybe Bool)
lpDefault
  = lens _lpDefault (\ s a -> s{_lpDefault = a})

-- | URL of this landing page. This is a required field.
lpUrl :: Lens' LandingPage (Maybe Text)
lpUrl = lens _lpUrl (\ s a -> s{_lpUrl = a})

-- | Name of this landing page. This is a required field. It must be less
-- than 256 characters long, and must be unique among landing pages of the
-- same campaign.
lpName :: Lens' LandingPage (Maybe Text)
lpName = lens _lpName (\ s a -> s{_lpName = a})

-- | ID of this landing page. This is a read-only, auto-generated field.
lpId :: Lens' LandingPage (Maybe Int64)
lpId = lens _lpId (\ s a -> s{_lpId = a})

instance FromJSON LandingPage where
        parseJSON
          = withObject "LandingPage"
              (\ o ->
                 LandingPage <$>
                   (o .:? "kind" .!= "dfareporting#landingPage") <*>
                     (o .:? "default")
                     <*> (o .:? "url")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON LandingPage where
        toJSON LandingPage{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lpKind),
                  ("default" .=) <$> _lpDefault, ("url" .=) <$> _lpUrl,
                  ("name" .=) <$> _lpName, ("id" .=) <$> _lpId])

-- | Landing Page List Response
--
-- /See:/ 'landingPagesListResponse' smart constructor.
data LandingPagesListResponse = LandingPagesListResponse
    { _lplrLandingPages :: !(Maybe [Maybe LandingPage])
    , _lplrKind         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplrLandingPages'
--
-- * 'lplrKind'
landingPagesListResponse
    :: LandingPagesListResponse
landingPagesListResponse =
    LandingPagesListResponse
    { _lplrLandingPages = Nothing
    , _lplrKind = "dfareporting#landingPagesListResponse"
    }

-- | Landing page collection
lplrLandingPages :: Lens' LandingPagesListResponse [Maybe LandingPage]
lplrLandingPages
  = lens _lplrLandingPages
      (\ s a -> s{_lplrLandingPages = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#landingPagesListResponse\".
lplrKind :: Lens' LandingPagesListResponse Text
lplrKind = lens _lplrKind (\ s a -> s{_lplrKind = a})

instance FromJSON LandingPagesListResponse where
        parseJSON
          = withObject "LandingPagesListResponse"
              (\ o ->
                 LandingPagesListResponse <$>
                   (o .:? "landingPages" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#landingPagesListResponse"))

instance ToJSON LandingPagesListResponse where
        toJSON LandingPagesListResponse{..}
          = object
              (catMaybes
                 [("landingPages" .=) <$> _lplrLandingPages,
                  Just ("kind" .= _lplrKind)])

-- | Modification timestamp.
--
-- /See:/ 'lastModifiedInfo' smart constructor.
newtype LastModifiedInfo = LastModifiedInfo
    { _lmiTime :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LastModifiedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmiTime'
lastModifiedInfo
    :: LastModifiedInfo
lastModifiedInfo =
    LastModifiedInfo
    { _lmiTime = Nothing
    }

-- | Timestamp of the last change in milliseconds since epoch.
lmiTime :: Lens' LastModifiedInfo (Maybe Int64)
lmiTime = lens _lmiTime (\ s a -> s{_lmiTime = a})

instance FromJSON LastModifiedInfo where
        parseJSON
          = withObject "LastModifiedInfo"
              (\ o -> LastModifiedInfo <$> (o .:? "time"))

instance ToJSON LastModifiedInfo where
        toJSON LastModifiedInfo{..}
          = object (catMaybes [("time" .=) <$> _lmiTime])

-- | A group clause made up of list population terms representing constraints
-- joined by ORs.
--
-- /See:/ 'listPopulationClause' smart constructor.
newtype ListPopulationClause = ListPopulationClause
    { _lpcTerms :: Maybe [Maybe ListPopulationTerm]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListPopulationClause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpcTerms'
listPopulationClause
    :: ListPopulationClause
listPopulationClause =
    ListPopulationClause
    { _lpcTerms = Nothing
    }

-- | Terms of this list population clause. Each clause is made up of list
-- population terms representing constraints and are joined by ORs.
lpcTerms :: Lens' ListPopulationClause [Maybe ListPopulationTerm]
lpcTerms
  = lens _lpcTerms (\ s a -> s{_lpcTerms = a}) .
      _Default
      . _Coerce

instance FromJSON ListPopulationClause where
        parseJSON
          = withObject "ListPopulationClause"
              (\ o ->
                 ListPopulationClause <$> (o .:? "terms" .!= mempty))

instance ToJSON ListPopulationClause where
        toJSON ListPopulationClause{..}
          = object (catMaybes [("terms" .=) <$> _lpcTerms])

-- | Remarketing List Population Rule.
--
-- /See:/ 'listPopulationRule' smart constructor.
data ListPopulationRule = ListPopulationRule
    { _lprFloodlightActivityName :: !(Maybe Text)
    , _lprFloodlightActivityId   :: !(Maybe Int64)
    , _lprListPopulationClauses  :: !(Maybe [Maybe ListPopulationClause])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListPopulationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprFloodlightActivityName'
--
-- * 'lprFloodlightActivityId'
--
-- * 'lprListPopulationClauses'
listPopulationRule
    :: ListPopulationRule
listPopulationRule =
    ListPopulationRule
    { _lprFloodlightActivityName = Nothing
    , _lprFloodlightActivityId = Nothing
    , _lprListPopulationClauses = Nothing
    }

-- | Name of floodlight activity associated with this rule. This is a
-- read-only, auto-generated field.
lprFloodlightActivityName :: Lens' ListPopulationRule (Maybe Text)
lprFloodlightActivityName
  = lens _lprFloodlightActivityName
      (\ s a -> s{_lprFloodlightActivityName = a})

-- | Floodlight activity ID associated with this rule. This field can be left
-- blank.
lprFloodlightActivityId :: Lens' ListPopulationRule (Maybe Int64)
lprFloodlightActivityId
  = lens _lprFloodlightActivityId
      (\ s a -> s{_lprFloodlightActivityId = a})

-- | Clauses that make up this list population rule. Clauses are joined by
-- ANDs, and the clauses themselves are made up of list population terms
-- which are joined by ORs.
lprListPopulationClauses :: Lens' ListPopulationRule [Maybe ListPopulationClause]
lprListPopulationClauses
  = lens _lprListPopulationClauses
      (\ s a -> s{_lprListPopulationClauses = a})
      . _Default
      . _Coerce

instance FromJSON ListPopulationRule where
        parseJSON
          = withObject "ListPopulationRule"
              (\ o ->
                 ListPopulationRule <$>
                   (o .:? "floodlightActivityName") <*>
                     (o .:? "floodlightActivityId")
                     <*> (o .:? "listPopulationClauses" .!= mempty))

instance ToJSON ListPopulationRule where
        toJSON ListPopulationRule{..}
          = object
              (catMaybes
                 [("floodlightActivityName" .=) <$>
                    _lprFloodlightActivityName,
                  ("floodlightActivityId" .=) <$>
                    _lprFloodlightActivityId,
                  ("listPopulationClauses" .=) <$>
                    _lprListPopulationClauses])

-- | Remarketing List Population Rule Term.
--
-- /See:/ 'listPopulationTerm' smart constructor.
data ListPopulationTerm = ListPopulationTerm
    { _lptOperator             :: !(Maybe ListPopulationTermOperator)
    , _lptValue                :: !(Maybe Text)
    , _lptVariableFriendlyName :: !(Maybe Text)
    , _lptNegation             :: !(Maybe Bool)
    , _lptVariableName         :: !(Maybe Text)
    , _lptRemarketingListId    :: !(Maybe Int64)
    , _lptType                 :: !(Maybe ListPopulationTermType)
    , _lptContains             :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListPopulationTerm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lptOperator'
--
-- * 'lptValue'
--
-- * 'lptVariableFriendlyName'
--
-- * 'lptNegation'
--
-- * 'lptVariableName'
--
-- * 'lptRemarketingListId'
--
-- * 'lptType'
--
-- * 'lptContains'
listPopulationTerm
    :: ListPopulationTerm
listPopulationTerm =
    ListPopulationTerm
    { _lptOperator = Nothing
    , _lptValue = Nothing
    , _lptVariableFriendlyName = Nothing
    , _lptNegation = Nothing
    , _lptVariableName = Nothing
    , _lptRemarketingListId = Nothing
    , _lptType = Nothing
    , _lptContains = Nothing
    }

-- | Comparison operator of this term. This field is only relevant when type
-- is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
lptOperator :: Lens' ListPopulationTerm (Maybe ListPopulationTermOperator)
lptOperator
  = lens _lptOperator (\ s a -> s{_lptOperator = a})

-- | Literal to compare the variable to. This field is only relevant when
-- type is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
lptValue :: Lens' ListPopulationTerm (Maybe Text)
lptValue = lens _lptValue (\ s a -> s{_lptValue = a})

-- | Friendly name of this term\'s variable. This is a read-only,
-- auto-generated field. This field is only relevant when type is left
-- unset or set to CUSTOM_VARIABLE_TERM.
lptVariableFriendlyName :: Lens' ListPopulationTerm (Maybe Text)
lptVariableFriendlyName
  = lens _lptVariableFriendlyName
      (\ s a -> s{_lptVariableFriendlyName = a})

-- | Whether to negate the comparison result of this term during rule
-- evaluation. This field is only relevant when type is left unset or set
-- to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
lptNegation :: Lens' ListPopulationTerm (Maybe Bool)
lptNegation
  = lens _lptNegation (\ s a -> s{_lptNegation = a})

-- | Name of the variable (U1, U2, etc.) being compared in this term. This
-- field is only relevant when type is set to null, CUSTOM_VARIABLE_TERM or
-- REFERRER_TERM.
lptVariableName :: Lens' ListPopulationTerm (Maybe Text)
lptVariableName
  = lens _lptVariableName
      (\ s a -> s{_lptVariableName = a})

-- | ID of the list in question. This field is only relevant when type is set
-- to LIST_MEMBERSHIP_TERM.
lptRemarketingListId :: Lens' ListPopulationTerm (Maybe Int64)
lptRemarketingListId
  = lens _lptRemarketingListId
      (\ s a -> s{_lptRemarketingListId = a})

-- | List population term type determines the applicable fields in this
-- object. If left unset or set to CUSTOM_VARIABLE_TERM, then variableName,
-- variableFriendlyName, operator, value, and negation are applicable. If
-- set to LIST_MEMBERSHIP_TERM then remarketingListId and contains are
-- applicable. If set to REFERRER_TERM then operator, value, and negation
-- are applicable.
lptType :: Lens' ListPopulationTerm (Maybe ListPopulationTermType)
lptType = lens _lptType (\ s a -> s{_lptType = a})

-- | Will be true if the term should check if the user is in the list and
-- false if the term should check if the user is not in the list. This
-- field is only relevant when type is set to LIST_MEMBERSHIP_TERM. False
-- by default.
lptContains :: Lens' ListPopulationTerm (Maybe Bool)
lptContains
  = lens _lptContains (\ s a -> s{_lptContains = a})

instance FromJSON ListPopulationTerm where
        parseJSON
          = withObject "ListPopulationTerm"
              (\ o ->
                 ListPopulationTerm <$>
                   (o .:? "operator") <*> (o .:? "value") <*>
                     (o .:? "variableFriendlyName")
                     <*> (o .:? "negation")
                     <*> (o .:? "variableName")
                     <*> (o .:? "remarketingListId")
                     <*> (o .:? "type")
                     <*> (o .:? "contains"))

instance ToJSON ListPopulationTerm where
        toJSON ListPopulationTerm{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _lptOperator,
                  ("value" .=) <$> _lptValue,
                  ("variableFriendlyName" .=) <$>
                    _lptVariableFriendlyName,
                  ("negation" .=) <$> _lptNegation,
                  ("variableName" .=) <$> _lptVariableName,
                  ("remarketingListId" .=) <$> _lptRemarketingListId,
                  ("type" .=) <$> _lptType,
                  ("contains" .=) <$> _lptContains])

-- | Remarketing List Targeting Expression.
--
-- /See:/ 'listTargetingExpression' smart constructor.
newtype ListTargetingExpression = ListTargetingExpression
    { _lteExpression :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTargetingExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lteExpression'
listTargetingExpression
    :: ListTargetingExpression
listTargetingExpression =
    ListTargetingExpression
    { _lteExpression = Nothing
    }

-- | Expression describing which lists are being targeted by the ad.
lteExpression :: Lens' ListTargetingExpression (Maybe Text)
lteExpression
  = lens _lteExpression
      (\ s a -> s{_lteExpression = a})

instance FromJSON ListTargetingExpression where
        parseJSON
          = withObject "ListTargetingExpression"
              (\ o ->
                 ListTargetingExpression <$> (o .:? "expression"))

instance ToJSON ListTargetingExpression where
        toJSON ListTargetingExpression{..}
          = object
              (catMaybes [("expression" .=) <$> _lteExpression])

-- | Lookback configuration settings.
--
-- /See:/ 'lookbackConfiguration' smart constructor.
data LookbackConfiguration = LookbackConfiguration
    { _lcClickDuration                    :: !(Maybe Int32)
    , _lcPostImpressionActivitiesDuration :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LookbackConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcClickDuration'
--
-- * 'lcPostImpressionActivitiesDuration'
lookbackConfiguration
    :: LookbackConfiguration
lookbackConfiguration =
    LookbackConfiguration
    { _lcClickDuration = Nothing
    , _lcPostImpressionActivitiesDuration = Nothing
    }

-- | Lookback window, in days, from the last time a given user clicked on one
-- of your ads. If you enter 0, clicks will not be considered as triggering
-- events for floodlight tracking. If you leave this field blank, the
-- default value for your account will be used.
lcClickDuration :: Lens' LookbackConfiguration (Maybe Int32)
lcClickDuration
  = lens _lcClickDuration
      (\ s a -> s{_lcClickDuration = a})

-- | Lookback window, in days, from the last time a given user viewed one of
-- your ads. If you enter 0, impressions will not be considered as
-- triggering events for floodlight tracking. If you leave this field
-- blank, the default value for your account will be used.
lcPostImpressionActivitiesDuration :: Lens' LookbackConfiguration (Maybe Int32)
lcPostImpressionActivitiesDuration
  = lens _lcPostImpressionActivitiesDuration
      (\ s a -> s{_lcPostImpressionActivitiesDuration = a})

instance FromJSON LookbackConfiguration where
        parseJSON
          = withObject "LookbackConfiguration"
              (\ o ->
                 LookbackConfiguration <$>
                   (o .:? "clickDuration") <*>
                     (o .:? "postImpressionActivitiesDuration"))

instance ToJSON LookbackConfiguration where
        toJSON LookbackConfiguration{..}
          = object
              (catMaybes
                 [("clickDuration" .=) <$> _lcClickDuration,
                  ("postImpressionActivitiesDuration" .=) <$>
                    _lcPostImpressionActivitiesDuration])

-- | Represents a metric.
--
-- /See:/ 'metric' smart constructor.
data Metric = Metric
    { _mKind :: !Text
    , _mName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mName'
metric
    :: Metric
metric =
    Metric
    { _mKind = "dfareporting#metric"
    , _mName = Nothing
    }

-- | The kind of resource this is, in this case dfareporting#metric.
mKind :: Lens' Metric Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | The metric name, e.g. dfa:impressions
mName :: Lens' Metric (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

instance FromJSON Metric where
        parseJSON
          = withObject "Metric"
              (\ o ->
                 Metric <$>
                   (o .:? "kind" .!= "dfareporting#metric") <*>
                     (o .:? "name"))

instance ToJSON Metric where
        toJSON Metric{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind), ("name" .=) <$> _mName])

-- | Contains information about a metro region that can be targeted by ads.
--
-- /See:/ 'metro' smart constructor.
data Metro = Metro
    { _metMetroCode     :: !(Maybe Text)
    , _metKind          :: !Text
    , _metName          :: !(Maybe Text)
    , _metCountryCode   :: !(Maybe Text)
    , _metDmaId         :: !(Maybe Int64)
    , _metCountryDartId :: !(Maybe Int64)
    , _metDartId        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metro' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'metMetroCode'
--
-- * 'metKind'
--
-- * 'metName'
--
-- * 'metCountryCode'
--
-- * 'metDmaId'
--
-- * 'metCountryDartId'
--
-- * 'metDartId'
metro
    :: Metro
metro =
    Metro
    { _metMetroCode = Nothing
    , _metKind = "dfareporting#metro"
    , _metName = Nothing
    , _metCountryCode = Nothing
    , _metDmaId = Nothing
    , _metCountryDartId = Nothing
    , _metDartId = Nothing
    }

-- | Metro code of this metro region. This is equivalent to dma_id.
metMetroCode :: Lens' Metro (Maybe Text)
metMetroCode
  = lens _metMetroCode (\ s a -> s{_metMetroCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#metro\".
metKind :: Lens' Metro Text
metKind = lens _metKind (\ s a -> s{_metKind = a})

-- | Name of this metro region.
metName :: Lens' Metro (Maybe Text)
metName = lens _metName (\ s a -> s{_metName = a})

-- | Country code of the country to which this metro region belongs.
metCountryCode :: Lens' Metro (Maybe Text)
metCountryCode
  = lens _metCountryCode
      (\ s a -> s{_metCountryCode = a})

-- | DMA ID of this metro region. This is the ID used for targeting and
-- generating reports, and is equivalent to metro_code.
metDmaId :: Lens' Metro (Maybe Int64)
metDmaId = lens _metDmaId (\ s a -> s{_metDmaId = a})

-- | DART ID of the country to which this metro region belongs.
metCountryDartId :: Lens' Metro (Maybe Int64)
metCountryDartId
  = lens _metCountryDartId
      (\ s a -> s{_metCountryDartId = a})

-- | DART ID of this metro region.
metDartId :: Lens' Metro (Maybe Int64)
metDartId
  = lens _metDartId (\ s a -> s{_metDartId = a})

instance FromJSON Metro where
        parseJSON
          = withObject "Metro"
              (\ o ->
                 Metro <$>
                   (o .:? "metroCode") <*>
                     (o .:? "kind" .!= "dfareporting#metro")
                     <*> (o .:? "name")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "dmaId")
                     <*> (o .:? "countryDartId")
                     <*> (o .:? "dartId"))

instance ToJSON Metro where
        toJSON Metro{..}
          = object
              (catMaybes
                 [("metroCode" .=) <$> _metMetroCode,
                  Just ("kind" .= _metKind), ("name" .=) <$> _metName,
                  ("countryCode" .=) <$> _metCountryCode,
                  ("dmaId" .=) <$> _metDmaId,
                  ("countryDartId" .=) <$> _metCountryDartId,
                  ("dartId" .=) <$> _metDartId])

-- | Metro List Response
--
-- /See:/ 'metrosListResponse' smart constructor.
data MetrosListResponse = MetrosListResponse
    { _mlrKind   :: !Text
    , _mlrMetros :: !(Maybe [Maybe Metro])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetrosListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrKind'
--
-- * 'mlrMetros'
metrosListResponse
    :: MetrosListResponse
metrosListResponse =
    MetrosListResponse
    { _mlrKind = "dfareporting#metrosListResponse"
    , _mlrMetros = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#metrosListResponse\".
mlrKind :: Lens' MetrosListResponse Text
mlrKind = lens _mlrKind (\ s a -> s{_mlrKind = a})

-- | Metro collection.
mlrMetros :: Lens' MetrosListResponse [Maybe Metro]
mlrMetros
  = lens _mlrMetros (\ s a -> s{_mlrMetros = a}) .
      _Default
      . _Coerce

instance FromJSON MetrosListResponse where
        parseJSON
          = withObject "MetrosListResponse"
              (\ o ->
                 MetrosListResponse <$>
                   (o .:? "kind" .!= "dfareporting#metrosListResponse")
                     <*> (o .:? "metros" .!= mempty))

instance ToJSON MetrosListResponse where
        toJSON MetrosListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mlrKind),
                  ("metros" .=) <$> _mlrMetros])

-- | Contains information about a mobile carrier that can be targeted by ads.
--
-- /See:/ 'mobileCarrier' smart constructor.
data MobileCarrier = MobileCarrier
    { _mcKind          :: !Text
    , _mcName          :: !(Maybe Text)
    , _mcCountryCode   :: !(Maybe Text)
    , _mcId            :: !(Maybe Int64)
    , _mcCountryDartId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarrier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcKind'
--
-- * 'mcName'
--
-- * 'mcCountryCode'
--
-- * 'mcId'
--
-- * 'mcCountryDartId'
mobileCarrier
    :: MobileCarrier
mobileCarrier =
    MobileCarrier
    { _mcKind = "dfareporting#mobileCarrier"
    , _mcName = Nothing
    , _mcCountryCode = Nothing
    , _mcId = Nothing
    , _mcCountryDartId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#mobileCarrier\".
mcKind :: Lens' MobileCarrier Text
mcKind = lens _mcKind (\ s a -> s{_mcKind = a})

-- | Name of this mobile carrier.
mcName :: Lens' MobileCarrier (Maybe Text)
mcName = lens _mcName (\ s a -> s{_mcName = a})

-- | Country code of the country to which this mobile carrier belongs.
mcCountryCode :: Lens' MobileCarrier (Maybe Text)
mcCountryCode
  = lens _mcCountryCode
      (\ s a -> s{_mcCountryCode = a})

-- | ID of this mobile carrier.
mcId :: Lens' MobileCarrier (Maybe Int64)
mcId = lens _mcId (\ s a -> s{_mcId = a})

-- | DART ID of the country to which this mobile carrier belongs.
mcCountryDartId :: Lens' MobileCarrier (Maybe Int64)
mcCountryDartId
  = lens _mcCountryDartId
      (\ s a -> s{_mcCountryDartId = a})

instance FromJSON MobileCarrier where
        parseJSON
          = withObject "MobileCarrier"
              (\ o ->
                 MobileCarrier <$>
                   (o .:? "kind" .!= "dfareporting#mobileCarrier") <*>
                     (o .:? "name")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "id")
                     <*> (o .:? "countryDartId"))

instance ToJSON MobileCarrier where
        toJSON MobileCarrier{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mcKind), ("name" .=) <$> _mcName,
                  ("countryCode" .=) <$> _mcCountryCode,
                  ("id" .=) <$> _mcId,
                  ("countryDartId" .=) <$> _mcCountryDartId])

-- | Mobile Carrier List Response
--
-- /See:/ 'mobileCarriersListResponse' smart constructor.
data MobileCarriersListResponse = MobileCarriersListResponse
    { _mclrMobileCarriers :: !(Maybe [Maybe MobileCarrier])
    , _mclrKind           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarriersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclrMobileCarriers'
--
-- * 'mclrKind'
mobileCarriersListResponse
    :: MobileCarriersListResponse
mobileCarriersListResponse =
    MobileCarriersListResponse
    { _mclrMobileCarriers = Nothing
    , _mclrKind = "dfareporting#mobileCarriersListResponse"
    }

-- | Mobile carrier collection.
mclrMobileCarriers :: Lens' MobileCarriersListResponse [Maybe MobileCarrier]
mclrMobileCarriers
  = lens _mclrMobileCarriers
      (\ s a -> s{_mclrMobileCarriers = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#mobileCarriersListResponse\".
mclrKind :: Lens' MobileCarriersListResponse Text
mclrKind = lens _mclrKind (\ s a -> s{_mclrKind = a})

instance FromJSON MobileCarriersListResponse where
        parseJSON
          = withObject "MobileCarriersListResponse"
              (\ o ->
                 MobileCarriersListResponse <$>
                   (o .:? "mobileCarriers" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#mobileCarriersListResponse"))

instance ToJSON MobileCarriersListResponse where
        toJSON MobileCarriersListResponse{..}
          = object
              (catMaybes
                 [("mobileCarriers" .=) <$> _mclrMobileCarriers,
                  Just ("kind" .= _mclrKind)])

-- | Object Filter.
--
-- /See:/ 'objectFilter' smart constructor.
data ObjectFilter = ObjectFilter
    { _ofStatus    :: !(Maybe ObjectFilterStatus)
    , _ofKind      :: !Text
    , _ofObjectIds :: !(Maybe [Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ofStatus'
--
-- * 'ofKind'
--
-- * 'ofObjectIds'
objectFilter
    :: ObjectFilter
objectFilter =
    ObjectFilter
    { _ofStatus = Nothing
    , _ofKind = "dfareporting#objectFilter"
    , _ofObjectIds = Nothing
    }

-- | Status of the filter. NONE means the user has access to none of the
-- objects. ALL means the user has access to all objects. ASSIGNED means
-- the user has access to the objects with IDs in the objectIds list.
ofStatus :: Lens' ObjectFilter (Maybe ObjectFilterStatus)
ofStatus = lens _ofStatus (\ s a -> s{_ofStatus = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#objectFilter\".
ofKind :: Lens' ObjectFilter Text
ofKind = lens _ofKind (\ s a -> s{_ofKind = a})

-- | Applicable when status is ASSIGNED. The user has access to objects with
-- these object IDs.
ofObjectIds :: Lens' ObjectFilter [Int64]
ofObjectIds
  = lens _ofObjectIds (\ s a -> s{_ofObjectIds = a}) .
      _Default
      . _Coerce

instance FromJSON ObjectFilter where
        parseJSON
          = withObject "ObjectFilter"
              (\ o ->
                 ObjectFilter <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "dfareporting#objectFilter")
                     <*> (o .:? "objectIds" .!= mempty))

instance ToJSON ObjectFilter where
        toJSON ObjectFilter{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ofStatus,
                  Just ("kind" .= _ofKind),
                  ("objectIds" .=) <$> _ofObjectIds])

-- | Offset Position.
--
-- /See:/ 'offsetPosition' smart constructor.
data OffsetPosition = OffsetPosition
    { _opLeft :: !(Maybe Int32)
    , _opTop  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffsetPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opLeft'
--
-- * 'opTop'
offsetPosition
    :: OffsetPosition
offsetPosition =
    OffsetPosition
    { _opLeft = Nothing
    , _opTop = Nothing
    }

-- | Offset distance from left side of an asset or a window.
opLeft :: Lens' OffsetPosition (Maybe Int32)
opLeft = lens _opLeft (\ s a -> s{_opLeft = a})

-- | Offset distance from top side of an asset or a window.
opTop :: Lens' OffsetPosition (Maybe Int32)
opTop = lens _opTop (\ s a -> s{_opTop = a})

instance FromJSON OffsetPosition where
        parseJSON
          = withObject "OffsetPosition"
              (\ o ->
                 OffsetPosition <$> (o .:? "left") <*> (o .:? "top"))

instance ToJSON OffsetPosition where
        toJSON OffsetPosition{..}
          = object
              (catMaybes
                 [("left" .=) <$> _opLeft, ("top" .=) <$> _opTop])

-- | Omniture Integration Settings.
--
-- /See:/ 'omnitureSettings' smart constructor.
data OmnitureSettings = OmnitureSettings
    { _osOmnitureCostDataEnabled    :: !(Maybe Bool)
    , _osOmnitureIntegrationEnabled :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OmnitureSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osOmnitureCostDataEnabled'
--
-- * 'osOmnitureIntegrationEnabled'
omnitureSettings
    :: OmnitureSettings
omnitureSettings =
    OmnitureSettings
    { _osOmnitureCostDataEnabled = Nothing
    , _osOmnitureIntegrationEnabled = Nothing
    }

-- | Whether placement cost data will be sent to Omniture. This property can
-- be enabled only if omnitureIntegrationEnabled is true.
osOmnitureCostDataEnabled :: Lens' OmnitureSettings (Maybe Bool)
osOmnitureCostDataEnabled
  = lens _osOmnitureCostDataEnabled
      (\ s a -> s{_osOmnitureCostDataEnabled = a})

-- | Whether Omniture integration is enabled. This property can be enabled
-- only when the \"Advanced Ad Serving\" account setting is enabled.
osOmnitureIntegrationEnabled :: Lens' OmnitureSettings (Maybe Bool)
osOmnitureIntegrationEnabled
  = lens _osOmnitureIntegrationEnabled
      (\ s a -> s{_osOmnitureIntegrationEnabled = a})

instance FromJSON OmnitureSettings where
        parseJSON
          = withObject "OmnitureSettings"
              (\ o ->
                 OmnitureSettings <$>
                   (o .:? "omnitureCostDataEnabled") <*>
                     (o .:? "omnitureIntegrationEnabled"))

instance ToJSON OmnitureSettings where
        toJSON OmnitureSettings{..}
          = object
              (catMaybes
                 [("omnitureCostDataEnabled" .=) <$>
                    _osOmnitureCostDataEnabled,
                  ("omnitureIntegrationEnabled" .=) <$>
                    _osOmnitureIntegrationEnabled])

-- | Contains information about an operating system that can be targeted by
-- ads.
--
-- /See:/ 'operatingSystem' smart constructor.
data OperatingSystem = OperatingSystem
    { _osDesktop :: !(Maybe Bool)
    , _osKind    :: !Text
    , _osName    :: !(Maybe Text)
    , _osMobile  :: !(Maybe Bool)
    , _osDartId  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osDesktop'
--
-- * 'osKind'
--
-- * 'osName'
--
-- * 'osMobile'
--
-- * 'osDartId'
operatingSystem
    :: OperatingSystem
operatingSystem =
    OperatingSystem
    { _osDesktop = Nothing
    , _osKind = "dfareporting#operatingSystem"
    , _osName = Nothing
    , _osMobile = Nothing
    , _osDartId = Nothing
    }

-- | Whether this operating system is for desktop.
osDesktop :: Lens' OperatingSystem (Maybe Bool)
osDesktop
  = lens _osDesktop (\ s a -> s{_osDesktop = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#operatingSystem\".
osKind :: Lens' OperatingSystem Text
osKind = lens _osKind (\ s a -> s{_osKind = a})

-- | Name of this operating system.
osName :: Lens' OperatingSystem (Maybe Text)
osName = lens _osName (\ s a -> s{_osName = a})

-- | Whether this operating system is for mobile.
osMobile :: Lens' OperatingSystem (Maybe Bool)
osMobile = lens _osMobile (\ s a -> s{_osMobile = a})

-- | DART ID of this operating system. This is the ID used for targeting.
osDartId :: Lens' OperatingSystem (Maybe Int64)
osDartId = lens _osDartId (\ s a -> s{_osDartId = a})

instance FromJSON OperatingSystem where
        parseJSON
          = withObject "OperatingSystem"
              (\ o ->
                 OperatingSystem <$>
                   (o .:? "desktop") <*>
                     (o .:? "kind" .!= "dfareporting#operatingSystem")
                     <*> (o .:? "name")
                     <*> (o .:? "mobile")
                     <*> (o .:? "dartId"))

instance ToJSON OperatingSystem where
        toJSON OperatingSystem{..}
          = object
              (catMaybes
                 [("desktop" .=) <$> _osDesktop,
                  Just ("kind" .= _osKind), ("name" .=) <$> _osName,
                  ("mobile" .=) <$> _osMobile,
                  ("dartId" .=) <$> _osDartId])

-- | Contains information about a particular version of an operating system
-- that can be targeted by ads.
--
-- /See:/ 'operatingSystemVersion' smart constructor.
data OperatingSystemVersion = OperatingSystemVersion
    { _osvMinorVersion    :: !(Maybe Text)
    , _osvKind            :: !Text
    , _osvOperatingSystem :: !(Maybe (Maybe OperatingSystem))
    , _osvMajorVersion    :: !(Maybe Text)
    , _osvName            :: !(Maybe Text)
    , _osvId              :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvMinorVersion'
--
-- * 'osvKind'
--
-- * 'osvOperatingSystem'
--
-- * 'osvMajorVersion'
--
-- * 'osvName'
--
-- * 'osvId'
operatingSystemVersion
    :: OperatingSystemVersion
operatingSystemVersion =
    OperatingSystemVersion
    { _osvMinorVersion = Nothing
    , _osvKind = "dfareporting#operatingSystemVersion"
    , _osvOperatingSystem = Nothing
    , _osvMajorVersion = Nothing
    , _osvName = Nothing
    , _osvId = Nothing
    }

-- | Minor version (number after the first dot) of this operating system
-- version.
osvMinorVersion :: Lens' OperatingSystemVersion (Maybe Text)
osvMinorVersion
  = lens _osvMinorVersion
      (\ s a -> s{_osvMinorVersion = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#operatingSystemVersion\".
osvKind :: Lens' OperatingSystemVersion Text
osvKind = lens _osvKind (\ s a -> s{_osvKind = a})

-- | Operating system of this operating system version.
osvOperatingSystem :: Lens' OperatingSystemVersion (Maybe (Maybe OperatingSystem))
osvOperatingSystem
  = lens _osvOperatingSystem
      (\ s a -> s{_osvOperatingSystem = a})

-- | Major version (leftmost number) of this operating system version.
osvMajorVersion :: Lens' OperatingSystemVersion (Maybe Text)
osvMajorVersion
  = lens _osvMajorVersion
      (\ s a -> s{_osvMajorVersion = a})

-- | Name of this operating system version.
osvName :: Lens' OperatingSystemVersion (Maybe Text)
osvName = lens _osvName (\ s a -> s{_osvName = a})

-- | ID of this operating system version.
osvId :: Lens' OperatingSystemVersion (Maybe Int64)
osvId = lens _osvId (\ s a -> s{_osvId = a})

instance FromJSON OperatingSystemVersion where
        parseJSON
          = withObject "OperatingSystemVersion"
              (\ o ->
                 OperatingSystemVersion <$>
                   (o .:? "minorVersion") <*>
                     (o .:? "kind" .!=
                        "dfareporting#operatingSystemVersion")
                     <*> (o .:? "operatingSystem")
                     <*> (o .:? "majorVersion")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON OperatingSystemVersion where
        toJSON OperatingSystemVersion{..}
          = object
              (catMaybes
                 [("minorVersion" .=) <$> _osvMinorVersion,
                  Just ("kind" .= _osvKind),
                  ("operatingSystem" .=) <$> _osvOperatingSystem,
                  ("majorVersion" .=) <$> _osvMajorVersion,
                  ("name" .=) <$> _osvName, ("id" .=) <$> _osvId])

-- | Operating System Version List Response
--
-- /See:/ 'operatingSystemVersionsListResponse' smart constructor.
data OperatingSystemVersionsListResponse = OperatingSystemVersionsListResponse
    { _osvlrKind                    :: !Text
    , _osvlrOperatingSystemVersions :: !(Maybe [Maybe OperatingSystemVersion])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemVersionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvlrKind'
--
-- * 'osvlrOperatingSystemVersions'
operatingSystemVersionsListResponse
    :: OperatingSystemVersionsListResponse
operatingSystemVersionsListResponse =
    OperatingSystemVersionsListResponse
    { _osvlrKind = "dfareporting#operatingSystemVersionsListResponse"
    , _osvlrOperatingSystemVersions = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#operatingSystemVersionsListResponse\".
osvlrKind :: Lens' OperatingSystemVersionsListResponse Text
osvlrKind
  = lens _osvlrKind (\ s a -> s{_osvlrKind = a})

-- | Operating system version collection.
osvlrOperatingSystemVersions :: Lens' OperatingSystemVersionsListResponse [Maybe OperatingSystemVersion]
osvlrOperatingSystemVersions
  = lens _osvlrOperatingSystemVersions
      (\ s a -> s{_osvlrOperatingSystemVersions = a})
      . _Default
      . _Coerce

instance FromJSON OperatingSystemVersionsListResponse
         where
        parseJSON
          = withObject "OperatingSystemVersionsListResponse"
              (\ o ->
                 OperatingSystemVersionsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#operatingSystemVersionsListResponse")
                     <*> (o .:? "operatingSystemVersions" .!= mempty))

instance ToJSON OperatingSystemVersionsListResponse
         where
        toJSON OperatingSystemVersionsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _osvlrKind),
                  ("operatingSystemVersions" .=) <$>
                    _osvlrOperatingSystemVersions])

-- | Operating System List Response
--
-- /See:/ 'operatingSystemsListResponse' smart constructor.
data OperatingSystemsListResponse = OperatingSystemsListResponse
    { _oslrKind             :: !Text
    , _oslrOperatingSystems :: !(Maybe [Maybe OperatingSystem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslrKind'
--
-- * 'oslrOperatingSystems'
operatingSystemsListResponse
    :: OperatingSystemsListResponse
operatingSystemsListResponse =
    OperatingSystemsListResponse
    { _oslrKind = "dfareporting#operatingSystemsListResponse"
    , _oslrOperatingSystems = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#operatingSystemsListResponse\".
oslrKind :: Lens' OperatingSystemsListResponse Text
oslrKind = lens _oslrKind (\ s a -> s{_oslrKind = a})

-- | Operating system collection.
oslrOperatingSystems :: Lens' OperatingSystemsListResponse [Maybe OperatingSystem]
oslrOperatingSystems
  = lens _oslrOperatingSystems
      (\ s a -> s{_oslrOperatingSystems = a})
      . _Default
      . _Coerce

instance FromJSON OperatingSystemsListResponse where
        parseJSON
          = withObject "OperatingSystemsListResponse"
              (\ o ->
                 OperatingSystemsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#operatingSystemsListResponse")
                     <*> (o .:? "operatingSystems" .!= mempty))

instance ToJSON OperatingSystemsListResponse where
        toJSON OperatingSystemsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oslrKind),
                  ("operatingSystems" .=) <$> _oslrOperatingSystems])

-- | Creative optimization activity.
--
-- /See:/ 'optimizationActivity' smart constructor.
data OptimizationActivity = OptimizationActivity
    { _oaWeight                             :: !(Maybe Int32)
    , _oaFloodlightActivityId               :: !(Maybe Int64)
    , _oaFloodlightActivityIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OptimizationActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaWeight'
--
-- * 'oaFloodlightActivityId'
--
-- * 'oaFloodlightActivityIdDimensionValue'
optimizationActivity
    :: OptimizationActivity
optimizationActivity =
    OptimizationActivity
    { _oaWeight = Nothing
    , _oaFloodlightActivityId = Nothing
    , _oaFloodlightActivityIdDimensionValue = Nothing
    }

-- | Weight associated with this optimization. Must be greater than 1. The
-- weight assigned will be understood in proportion to the weights assigned
-- to the other optimization activities.
oaWeight :: Lens' OptimizationActivity (Maybe Int32)
oaWeight = lens _oaWeight (\ s a -> s{_oaWeight = a})

-- | Floodlight activity ID of this optimization activity. This is a required
-- field.
oaFloodlightActivityId :: Lens' OptimizationActivity (Maybe Int64)
oaFloodlightActivityId
  = lens _oaFloodlightActivityId
      (\ s a -> s{_oaFloodlightActivityId = a})

-- | Dimension value for the ID of the floodlight activity. This is a
-- read-only, auto-generated field.
oaFloodlightActivityIdDimensionValue :: Lens' OptimizationActivity (Maybe (Maybe DimensionValue))
oaFloodlightActivityIdDimensionValue
  = lens _oaFloodlightActivityIdDimensionValue
      (\ s a ->
         s{_oaFloodlightActivityIdDimensionValue = a})

instance FromJSON OptimizationActivity where
        parseJSON
          = withObject "OptimizationActivity"
              (\ o ->
                 OptimizationActivity <$>
                   (o .:? "weight") <*> (o .:? "floodlightActivityId")
                     <*> (o .:? "floodlightActivityIdDimensionValue"))

instance ToJSON OptimizationActivity where
        toJSON OptimizationActivity{..}
          = object
              (catMaybes
                 [("weight" .=) <$> _oaWeight,
                  ("floodlightActivityId" .=) <$>
                    _oaFloodlightActivityId,
                  ("floodlightActivityIdDimensionValue" .=) <$>
                    _oaFloodlightActivityIdDimensionValue])

-- | Describes properties of a DoubleClick Planning order.
--
-- /See:/ 'order' smart constructor.
data Order = Order
    { _oSellerOrderId          :: !(Maybe Text)
    , _oSellerOrganizationName :: !(Maybe Text)
    , _oKind                   :: !Text
    , _oAdvertiserId           :: !(Maybe Int64)
    , _oPlanningTermId         :: !(Maybe Int64)
    , _oAccountId              :: !(Maybe Int64)
    , _oName                   :: !(Maybe Text)
    , _oSiteNames              :: !(Maybe [Text])
    , _oLastModifiedInfo       :: !(Maybe (Maybe LastModifiedInfo))
    , _oBuyerOrganizationName  :: !(Maybe Text)
    , _oId                     :: !(Maybe Int64)
    , _oBuyerInvoiceId         :: !(Maybe Text)
    , _oComments               :: !(Maybe Text)
    , _oProjectId              :: !(Maybe Int64)
    , _oSubaccountId           :: !(Maybe Int64)
    , _oNotes                  :: !(Maybe Text)
    , _oContacts               :: !(Maybe [Maybe OrderContact])
    , _oSiteId                 :: !(Maybe [Int64])
    , _oTermsAndConditions     :: !(Maybe Text)
    , _oApproverUserProfileIds :: !(Maybe [Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oSellerOrderId'
--
-- * 'oSellerOrganizationName'
--
-- * 'oKind'
--
-- * 'oAdvertiserId'
--
-- * 'oPlanningTermId'
--
-- * 'oAccountId'
--
-- * 'oName'
--
-- * 'oSiteNames'
--
-- * 'oLastModifiedInfo'
--
-- * 'oBuyerOrganizationName'
--
-- * 'oId'
--
-- * 'oBuyerInvoiceId'
--
-- * 'oComments'
--
-- * 'oProjectId'
--
-- * 'oSubaccountId'
--
-- * 'oNotes'
--
-- * 'oContacts'
--
-- * 'oSiteId'
--
-- * 'oTermsAndConditions'
--
-- * 'oApproverUserProfileIds'
order
    :: Order
order =
    Order
    { _oSellerOrderId = Nothing
    , _oSellerOrganizationName = Nothing
    , _oKind = "dfareporting#order"
    , _oAdvertiserId = Nothing
    , _oPlanningTermId = Nothing
    , _oAccountId = Nothing
    , _oName = Nothing
    , _oSiteNames = Nothing
    , _oLastModifiedInfo = Nothing
    , _oBuyerOrganizationName = Nothing
    , _oId = Nothing
    , _oBuyerInvoiceId = Nothing
    , _oComments = Nothing
    , _oProjectId = Nothing
    , _oSubaccountId = Nothing
    , _oNotes = Nothing
    , _oContacts = Nothing
    , _oSiteId = Nothing
    , _oTermsAndConditions = Nothing
    , _oApproverUserProfileIds = Nothing
    }

-- | Seller order ID associated with this order.
oSellerOrderId :: Lens' Order (Maybe Text)
oSellerOrderId
  = lens _oSellerOrderId
      (\ s a -> s{_oSellerOrderId = a})

-- | Name of the seller organization.
oSellerOrganizationName :: Lens' Order (Maybe Text)
oSellerOrganizationName
  = lens _oSellerOrganizationName
      (\ s a -> s{_oSellerOrganizationName = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#order\".
oKind :: Lens' Order Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | Advertiser ID of this order.
oAdvertiserId :: Lens' Order (Maybe Int64)
oAdvertiserId
  = lens _oAdvertiserId
      (\ s a -> s{_oAdvertiserId = a})

-- | ID of the terms and conditions template used in this order.
oPlanningTermId :: Lens' Order (Maybe Int64)
oPlanningTermId
  = lens _oPlanningTermId
      (\ s a -> s{_oPlanningTermId = a})

-- | Account ID of this order.
oAccountId :: Lens' Order (Maybe Int64)
oAccountId
  = lens _oAccountId (\ s a -> s{_oAccountId = a})

-- | Name of this order.
oName :: Lens' Order (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Free-form site names this order is associated with.
oSiteNames :: Lens' Order [Text]
oSiteNames
  = lens _oSiteNames (\ s a -> s{_oSiteNames = a}) .
      _Default
      . _Coerce

-- | Information about the most recent modification of this order.
oLastModifiedInfo :: Lens' Order (Maybe (Maybe LastModifiedInfo))
oLastModifiedInfo
  = lens _oLastModifiedInfo
      (\ s a -> s{_oLastModifiedInfo = a})

-- | Name of the buyer organization.
oBuyerOrganizationName :: Lens' Order (Maybe Text)
oBuyerOrganizationName
  = lens _oBuyerOrganizationName
      (\ s a -> s{_oBuyerOrganizationName = a})

-- | ID of this order. This is a read-only, auto-generated field.
oId :: Lens' Order (Maybe Int64)
oId = lens _oId (\ s a -> s{_oId = a})

-- | Buyer invoice ID associated with this order.
oBuyerInvoiceId :: Lens' Order (Maybe Text)
oBuyerInvoiceId
  = lens _oBuyerInvoiceId
      (\ s a -> s{_oBuyerInvoiceId = a})

-- | Comments in this order.
oComments :: Lens' Order (Maybe Text)
oComments
  = lens _oComments (\ s a -> s{_oComments = a})

-- | Project ID of this order.
oProjectId :: Lens' Order (Maybe Int64)
oProjectId
  = lens _oProjectId (\ s a -> s{_oProjectId = a})

-- | Subaccount ID of this order.
oSubaccountId :: Lens' Order (Maybe Int64)
oSubaccountId
  = lens _oSubaccountId
      (\ s a -> s{_oSubaccountId = a})

-- | Notes of this order.
oNotes :: Lens' Order (Maybe Text)
oNotes = lens _oNotes (\ s a -> s{_oNotes = a})

-- | Contacts for this order.
oContacts :: Lens' Order [Maybe OrderContact]
oContacts
  = lens _oContacts (\ s a -> s{_oContacts = a}) .
      _Default
      . _Coerce

-- | Site IDs this order is associated with.
oSiteId :: Lens' Order [Int64]
oSiteId
  = lens _oSiteId (\ s a -> s{_oSiteId = a}) . _Default
      . _Coerce

-- | Terms and conditions of this order.
oTermsAndConditions :: Lens' Order (Maybe Text)
oTermsAndConditions
  = lens _oTermsAndConditions
      (\ s a -> s{_oTermsAndConditions = a})

-- | IDs for users that have to approve documents created for this order.
oApproverUserProfileIds :: Lens' Order [Int64]
oApproverUserProfileIds
  = lens _oApproverUserProfileIds
      (\ s a -> s{_oApproverUserProfileIds = a})
      . _Default
      . _Coerce

instance FromJSON Order where
        parseJSON
          = withObject "Order"
              (\ o ->
                 Order <$>
                   (o .:? "sellerOrderId") <*>
                     (o .:? "sellerOrganizationName")
                     <*> (o .:? "kind" .!= "dfareporting#order")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "planningTermId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "siteNames" .!= mempty)
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "buyerOrganizationName")
                     <*> (o .:? "id")
                     <*> (o .:? "buyerInvoiceId")
                     <*> (o .:? "comments")
                     <*> (o .:? "projectId")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "notes")
                     <*> (o .:? "contacts" .!= mempty)
                     <*> (o .:? "siteId" .!= mempty)
                     <*> (o .:? "termsAndConditions")
                     <*> (o .:? "approverUserProfileIds" .!= mempty))

instance ToJSON Order where
        toJSON Order{..}
          = object
              (catMaybes
                 [("sellerOrderId" .=) <$> _oSellerOrderId,
                  ("sellerOrganizationName" .=) <$>
                    _oSellerOrganizationName,
                  Just ("kind" .= _oKind),
                  ("advertiserId" .=) <$> _oAdvertiserId,
                  ("planningTermId" .=) <$> _oPlanningTermId,
                  ("accountId" .=) <$> _oAccountId,
                  ("name" .=) <$> _oName,
                  ("siteNames" .=) <$> _oSiteNames,
                  ("lastModifiedInfo" .=) <$> _oLastModifiedInfo,
                  ("buyerOrganizationName" .=) <$>
                    _oBuyerOrganizationName,
                  ("id" .=) <$> _oId,
                  ("buyerInvoiceId" .=) <$> _oBuyerInvoiceId,
                  ("comments" .=) <$> _oComments,
                  ("projectId" .=) <$> _oProjectId,
                  ("subaccountId" .=) <$> _oSubaccountId,
                  ("notes" .=) <$> _oNotes,
                  ("contacts" .=) <$> _oContacts,
                  ("siteId" .=) <$> _oSiteId,
                  ("termsAndConditions" .=) <$> _oTermsAndConditions,
                  ("approverUserProfileIds" .=) <$>
                    _oApproverUserProfileIds])

-- | Contact of an order.
--
-- /See:/ 'orderContact' smart constructor.
data OrderContact = OrderContact
    { _ocSignatureUserProfileId :: !(Maybe Int64)
    , _ocContactName            :: !(Maybe Text)
    , _ocContactTitle           :: !(Maybe Text)
    , _ocContactType            :: !(Maybe OrderContactContactType)
    , _ocContactInfo            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocSignatureUserProfileId'
--
-- * 'ocContactName'
--
-- * 'ocContactTitle'
--
-- * 'ocContactType'
--
-- * 'ocContactInfo'
orderContact
    :: OrderContact
orderContact =
    OrderContact
    { _ocSignatureUserProfileId = Nothing
    , _ocContactName = Nothing
    , _ocContactTitle = Nothing
    , _ocContactType = Nothing
    , _ocContactInfo = Nothing
    }

-- | ID of the user profile containing the signature that will be embedded
-- into order documents.
ocSignatureUserProfileId :: Lens' OrderContact (Maybe Int64)
ocSignatureUserProfileId
  = lens _ocSignatureUserProfileId
      (\ s a -> s{_ocSignatureUserProfileId = a})

-- | Name of this contact.
ocContactName :: Lens' OrderContact (Maybe Text)
ocContactName
  = lens _ocContactName
      (\ s a -> s{_ocContactName = a})

-- | Title of this contact.
ocContactTitle :: Lens' OrderContact (Maybe Text)
ocContactTitle
  = lens _ocContactTitle
      (\ s a -> s{_ocContactTitle = a})

-- | Type of this contact.
ocContactType :: Lens' OrderContact (Maybe OrderContactContactType)
ocContactType
  = lens _ocContactType
      (\ s a -> s{_ocContactType = a})

-- | Free-form information about this contact. It could be any information
-- related to this contact in addition to type, title, name, and signature
-- user profile ID.
ocContactInfo :: Lens' OrderContact (Maybe Text)
ocContactInfo
  = lens _ocContactInfo
      (\ s a -> s{_ocContactInfo = a})

instance FromJSON OrderContact where
        parseJSON
          = withObject "OrderContact"
              (\ o ->
                 OrderContact <$>
                   (o .:? "signatureUserProfileId") <*>
                     (o .:? "contactName")
                     <*> (o .:? "contactTitle")
                     <*> (o .:? "contactType")
                     <*> (o .:? "contactInfo"))

instance ToJSON OrderContact where
        toJSON OrderContact{..}
          = object
              (catMaybes
                 [("signatureUserProfileId" .=) <$>
                    _ocSignatureUserProfileId,
                  ("contactName" .=) <$> _ocContactName,
                  ("contactTitle" .=) <$> _ocContactTitle,
                  ("contactType" .=) <$> _ocContactType,
                  ("contactInfo" .=) <$> _ocContactInfo])

-- | Contains properties of a DoubleClick Planning order document.
--
-- /See:/ 'orderDocument' smart constructor.
data OrderDocument = OrderDocument
    { _odSigned                   :: !(Maybe Bool)
    , _odKind                     :: !Text
    , _odAdvertiserId             :: !(Maybe Int64)
    , _odLastSentTime             :: !(Maybe UTCTime)
    , _odAmendedOrderDocumentId   :: !(Maybe Int64)
    , _odLastSentRecipients       :: !(Maybe [Text])
    , _odEffectiveDate            :: !(Maybe UTCTime)
    , _odApprovedByUserProfileIds :: !(Maybe [Int64])
    , _odAccountId                :: !(Maybe Int64)
    , _odId                       :: !(Maybe Int64)
    , _odProjectId                :: !(Maybe Int64)
    , _odTitle                    :: !(Maybe Text)
    , _odSubaccountId             :: !(Maybe Int64)
    , _odType                     :: !(Maybe OrderDocumentType)
    , _odOrderId                  :: !(Maybe Int64)
    , _odCancelled                :: !(Maybe Bool)
    , _odCreatedInfo              :: !(Maybe (Maybe LastModifiedInfo))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odSigned'
--
-- * 'odKind'
--
-- * 'odAdvertiserId'
--
-- * 'odLastSentTime'
--
-- * 'odAmendedOrderDocumentId'
--
-- * 'odLastSentRecipients'
--
-- * 'odEffectiveDate'
--
-- * 'odApprovedByUserProfileIds'
--
-- * 'odAccountId'
--
-- * 'odId'
--
-- * 'odProjectId'
--
-- * 'odTitle'
--
-- * 'odSubaccountId'
--
-- * 'odType'
--
-- * 'odOrderId'
--
-- * 'odCancelled'
--
-- * 'odCreatedInfo'
orderDocument
    :: OrderDocument
orderDocument =
    OrderDocument
    { _odSigned = Nothing
    , _odKind = "dfareporting#orderDocument"
    , _odAdvertiserId = Nothing
    , _odLastSentTime = Nothing
    , _odAmendedOrderDocumentId = Nothing
    , _odLastSentRecipients = Nothing
    , _odEffectiveDate = Nothing
    , _odApprovedByUserProfileIds = Nothing
    , _odAccountId = Nothing
    , _odId = Nothing
    , _odProjectId = Nothing
    , _odTitle = Nothing
    , _odSubaccountId = Nothing
    , _odType = Nothing
    , _odOrderId = Nothing
    , _odCancelled = Nothing
    , _odCreatedInfo = Nothing
    }

-- | Whether this order document has been signed.
odSigned :: Lens' OrderDocument (Maybe Bool)
odSigned = lens _odSigned (\ s a -> s{_odSigned = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#orderDocument\".
odKind :: Lens' OrderDocument Text
odKind = lens _odKind (\ s a -> s{_odKind = a})

-- | Advertiser ID of this order document.
odAdvertiserId :: Lens' OrderDocument (Maybe Int64)
odAdvertiserId
  = lens _odAdvertiserId
      (\ s a -> s{_odAdvertiserId = a})

-- | Timestamp of the last email sent with this order document.
odLastSentTime :: Lens' OrderDocument (Maybe UTCTime)
odLastSentTime
  = lens _odLastSentTime
      (\ s a -> s{_odLastSentTime = a})

-- | The amended order document ID of this order document. An order document
-- can be created by optionally amending another order document so that the
-- change history can be preserved.
odAmendedOrderDocumentId :: Lens' OrderDocument (Maybe Int64)
odAmendedOrderDocumentId
  = lens _odAmendedOrderDocumentId
      (\ s a -> s{_odAmendedOrderDocumentId = a})

-- | List of email addresses that received the last sent document.
odLastSentRecipients :: Lens' OrderDocument [Text]
odLastSentRecipients
  = lens _odLastSentRecipients
      (\ s a -> s{_odLastSentRecipients = a})
      . _Default
      . _Coerce

-- | Effective date of this order document.
odEffectiveDate :: Lens' OrderDocument (Maybe UTCTime)
odEffectiveDate
  = lens _odEffectiveDate
      (\ s a -> s{_odEffectiveDate = a})

-- | IDs of users who have approved this order document.
odApprovedByUserProfileIds :: Lens' OrderDocument [Int64]
odApprovedByUserProfileIds
  = lens _odApprovedByUserProfileIds
      (\ s a -> s{_odApprovedByUserProfileIds = a})
      . _Default
      . _Coerce

-- | Account ID of this order document.
odAccountId :: Lens' OrderDocument (Maybe Int64)
odAccountId
  = lens _odAccountId (\ s a -> s{_odAccountId = a})

-- | ID of this order document.
odId :: Lens' OrderDocument (Maybe Int64)
odId = lens _odId (\ s a -> s{_odId = a})

-- | Project ID of this order document.
odProjectId :: Lens' OrderDocument (Maybe Int64)
odProjectId
  = lens _odProjectId (\ s a -> s{_odProjectId = a})

-- | Title of this order document.
odTitle :: Lens' OrderDocument (Maybe Text)
odTitle = lens _odTitle (\ s a -> s{_odTitle = a})

-- | Subaccount ID of this order document.
odSubaccountId :: Lens' OrderDocument (Maybe Int64)
odSubaccountId
  = lens _odSubaccountId
      (\ s a -> s{_odSubaccountId = a})

-- | Type of this order document
odType :: Lens' OrderDocument (Maybe OrderDocumentType)
odType = lens _odType (\ s a -> s{_odType = a})

-- | ID of the order from which this order document is created.
odOrderId :: Lens' OrderDocument (Maybe Int64)
odOrderId
  = lens _odOrderId (\ s a -> s{_odOrderId = a})

-- | Whether this order document is cancelled.
odCancelled :: Lens' OrderDocument (Maybe Bool)
odCancelled
  = lens _odCancelled (\ s a -> s{_odCancelled = a})

-- | Information about the creation of this order document.
odCreatedInfo :: Lens' OrderDocument (Maybe (Maybe LastModifiedInfo))
odCreatedInfo
  = lens _odCreatedInfo
      (\ s a -> s{_odCreatedInfo = a})

instance FromJSON OrderDocument where
        parseJSON
          = withObject "OrderDocument"
              (\ o ->
                 OrderDocument <$>
                   (o .:? "signed") <*>
                     (o .:? "kind" .!= "dfareporting#orderDocument")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "lastSentTime")
                     <*> (o .:? "amendedOrderDocumentId")
                     <*> (o .:? "lastSentRecipients" .!= mempty)
                     <*> (o .:? "effectiveDate")
                     <*> (o .:? "approvedByUserProfileIds" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "title")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "type")
                     <*> (o .:? "orderId")
                     <*> (o .:? "cancelled")
                     <*> (o .:? "createdInfo"))

instance ToJSON OrderDocument where
        toJSON OrderDocument{..}
          = object
              (catMaybes
                 [("signed" .=) <$> _odSigned,
                  Just ("kind" .= _odKind),
                  ("advertiserId" .=) <$> _odAdvertiserId,
                  ("lastSentTime" .=) <$> _odLastSentTime,
                  ("amendedOrderDocumentId" .=) <$>
                    _odAmendedOrderDocumentId,
                  ("lastSentRecipients" .=) <$> _odLastSentRecipients,
                  ("effectiveDate" .=) <$> _odEffectiveDate,
                  ("approvedByUserProfileIds" .=) <$>
                    _odApprovedByUserProfileIds,
                  ("accountId" .=) <$> _odAccountId,
                  ("id" .=) <$> _odId,
                  ("projectId" .=) <$> _odProjectId,
                  ("title" .=) <$> _odTitle,
                  ("subaccountId" .=) <$> _odSubaccountId,
                  ("type" .=) <$> _odType,
                  ("orderId" .=) <$> _odOrderId,
                  ("cancelled" .=) <$> _odCancelled,
                  ("createdInfo" .=) <$> _odCreatedInfo])

-- | Order document List Response
--
-- /See:/ 'orderDocumentsListResponse' smart constructor.
data OrderDocumentsListResponse = OrderDocumentsListResponse
    { _odlrNextPageToken  :: !(Maybe Text)
    , _odlrKind           :: !Text
    , _odlrOrderDocuments :: !(Maybe [Maybe OrderDocument])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odlrNextPageToken'
--
-- * 'odlrKind'
--
-- * 'odlrOrderDocuments'
orderDocumentsListResponse
    :: OrderDocumentsListResponse
orderDocumentsListResponse =
    OrderDocumentsListResponse
    { _odlrNextPageToken = Nothing
    , _odlrKind = "dfareporting#orderDocumentsListResponse"
    , _odlrOrderDocuments = Nothing
    }

-- | Pagination token to be used for the next list operation.
odlrNextPageToken :: Lens' OrderDocumentsListResponse (Maybe Text)
odlrNextPageToken
  = lens _odlrNextPageToken
      (\ s a -> s{_odlrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#orderDocumentsListResponse\".
odlrKind :: Lens' OrderDocumentsListResponse Text
odlrKind = lens _odlrKind (\ s a -> s{_odlrKind = a})

-- | Order document collection
odlrOrderDocuments :: Lens' OrderDocumentsListResponse [Maybe OrderDocument]
odlrOrderDocuments
  = lens _odlrOrderDocuments
      (\ s a -> s{_odlrOrderDocuments = a})
      . _Default
      . _Coerce

instance FromJSON OrderDocumentsListResponse where
        parseJSON
          = withObject "OrderDocumentsListResponse"
              (\ o ->
                 OrderDocumentsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#orderDocumentsListResponse")
                     <*> (o .:? "orderDocuments" .!= mempty))

instance ToJSON OrderDocumentsListResponse where
        toJSON OrderDocumentsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _odlrNextPageToken,
                  Just ("kind" .= _odlrKind),
                  ("orderDocuments" .=) <$> _odlrOrderDocuments])

-- | Order List Response
--
-- /See:/ 'ordersListResponse' smart constructor.
data OrdersListResponse = OrdersListResponse
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind          :: !Text
    , _olrOrders        :: !(Maybe [Maybe Order])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrKind'
--
-- * 'olrOrders'
ordersListResponse
    :: OrdersListResponse
ordersListResponse =
    OrdersListResponse
    { _olrNextPageToken = Nothing
    , _olrKind = "dfareporting#ordersListResponse"
    , _olrOrders = Nothing
    }

-- | Pagination token to be used for the next list operation.
olrNextPageToken :: Lens' OrdersListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#ordersListResponse\".
olrKind :: Lens' OrdersListResponse Text
olrKind = lens _olrKind (\ s a -> s{_olrKind = a})

-- | Order collection.
olrOrders :: Lens' OrdersListResponse [Maybe Order]
olrOrders
  = lens _olrOrders (\ s a -> s{_olrOrders = a}) .
      _Default
      . _Coerce

instance FromJSON OrdersListResponse where
        parseJSON
          = withObject "OrdersListResponse"
              (\ o ->
                 OrdersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dfareporting#ordersListResponse")
                     <*> (o .:? "orders" .!= mempty))

instance ToJSON OrdersListResponse where
        toJSON OrdersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  Just ("kind" .= _olrKind),
                  ("orders" .=) <$> _olrOrders])

-- | Represents fields that are compatible to be selected for a report of
-- type \"PATH_TO_CONVERSION\".
--
-- /See:/ 'pathToConversionReportCompatibleFields' smart constructor.
data PathToConversionReportCompatibleFields = PathToConversionReportCompatibleFields
    { _ptcrcfMetrics                   :: !(Maybe [Maybe Metric])
    , _ptcrcfKind                      :: !Text
    , _ptcrcfConversionDimensions      :: !(Maybe [Maybe Dimension])
    , _ptcrcfCustomFloodlightVariables :: !(Maybe [Maybe Dimension])
    , _ptcrcfPerInteractionDimensions  :: !(Maybe [Maybe Dimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PathToConversionReportCompatibleFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcrcfMetrics'
--
-- * 'ptcrcfKind'
--
-- * 'ptcrcfConversionDimensions'
--
-- * 'ptcrcfCustomFloodlightVariables'
--
-- * 'ptcrcfPerInteractionDimensions'
pathToConversionReportCompatibleFields
    :: PathToConversionReportCompatibleFields
pathToConversionReportCompatibleFields =
    PathToConversionReportCompatibleFields
    { _ptcrcfMetrics = Nothing
    , _ptcrcfKind = "dfareporting#pathToConversionReportCompatibleFields"
    , _ptcrcfConversionDimensions = Nothing
    , _ptcrcfCustomFloodlightVariables = Nothing
    , _ptcrcfPerInteractionDimensions = Nothing
    }

-- | Metrics which are compatible to be selected in the \"metricNames\"
-- section of the report.
ptcrcfMetrics :: Lens' PathToConversionReportCompatibleFields [Maybe Metric]
ptcrcfMetrics
  = lens _ptcrcfMetrics
      (\ s a -> s{_ptcrcfMetrics = a})
      . _Default
      . _Coerce

-- | The kind of resource this is, in this case
-- dfareporting#pathToConversionReportCompatibleFields.
ptcrcfKind :: Lens' PathToConversionReportCompatibleFields Text
ptcrcfKind
  = lens _ptcrcfKind (\ s a -> s{_ptcrcfKind = a})

-- | Conversion dimensions which are compatible to be selected in the
-- \"conversionDimensions\" section of the report.
ptcrcfConversionDimensions :: Lens' PathToConversionReportCompatibleFields [Maybe Dimension]
ptcrcfConversionDimensions
  = lens _ptcrcfConversionDimensions
      (\ s a -> s{_ptcrcfConversionDimensions = a})
      . _Default
      . _Coerce

-- | Custom floodlight variables which are compatible to be selected in the
-- \"customFloodlightVariables\" section of the report.
ptcrcfCustomFloodlightVariables :: Lens' PathToConversionReportCompatibleFields [Maybe Dimension]
ptcrcfCustomFloodlightVariables
  = lens _ptcrcfCustomFloodlightVariables
      (\ s a -> s{_ptcrcfCustomFloodlightVariables = a})
      . _Default
      . _Coerce

-- | Per-interaction dimensions which are compatible to be selected in the
-- \"perInteractionDimensions\" section of the report.
ptcrcfPerInteractionDimensions :: Lens' PathToConversionReportCompatibleFields [Maybe Dimension]
ptcrcfPerInteractionDimensions
  = lens _ptcrcfPerInteractionDimensions
      (\ s a -> s{_ptcrcfPerInteractionDimensions = a})
      . _Default
      . _Coerce

instance FromJSON
         PathToConversionReportCompatibleFields where
        parseJSON
          = withObject "PathToConversionReportCompatibleFields"
              (\ o ->
                 PathToConversionReportCompatibleFields <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#pathToConversionReportCompatibleFields")
                     <*> (o .:? "conversionDimensions" .!= mempty)
                     <*> (o .:? "customFloodlightVariables" .!= mempty)
                     <*> (o .:? "perInteractionDimensions" .!= mempty))

instance ToJSON
         PathToConversionReportCompatibleFields where
        toJSON PathToConversionReportCompatibleFields{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _ptcrcfMetrics,
                  Just ("kind" .= _ptcrcfKind),
                  ("conversionDimensions" .=) <$>
                    _ptcrcfConversionDimensions,
                  ("customFloodlightVariables" .=) <$>
                    _ptcrcfCustomFloodlightVariables,
                  ("perInteractionDimensions" .=) <$>
                    _ptcrcfPerInteractionDimensions])

-- | Contains properties of a placement.
--
-- /See:/ 'placement' smart constructor.
data Placement = Placement
    { _pStatus                         :: !(Maybe PlacementStatus)
    , _pPlacementStrategyId            :: !(Maybe Int64)
    , _pTagFormats                     :: !(Maybe [PlacementItemTagFormats])
    , _pSiteIdDimensionValue           :: !(Maybe (Maybe DimensionValue))
    , _pPricingSchedule                :: !(Maybe (Maybe PricingSchedule))
    , _pSize                           :: !(Maybe (Maybe Size))
    , _pKind                           :: !Text
    , _pKeyName                        :: !(Maybe Text)
    , _pCampaignIdDimensionValue       :: !(Maybe (Maybe DimensionValue))
    , _pAdvertiserId                   :: !(Maybe Int64)
    , _pAdvertiserIdDimensionValue     :: !(Maybe (Maybe DimensionValue))
    , _pCampaignId                     :: !(Maybe Int64)
    , _pIdDimensionValue               :: !(Maybe (Maybe DimensionValue))
    , _pPrimary                        :: !(Maybe Bool)
    , _pLookbackConfiguration          :: !(Maybe (Maybe LookbackConfiguration))
    , _pTagSetting                     :: !(Maybe (Maybe TagSetting))
    , _pContentCategoryId              :: !(Maybe Int64)
    , _pDirectorySiteIdDimensionValue  :: !(Maybe (Maybe DimensionValue))
    , _pAccountId                      :: !(Maybe Int64)
    , _pPaymentSource                  :: !(Maybe PlacementPaymentSource)
    , _pName                           :: !(Maybe Text)
    , _pDirectorySiteId                :: !(Maybe Int64)
    , _pCreateInfo                     :: !(Maybe (Maybe LastModifiedInfo))
    , _pLastModifiedInfo               :: !(Maybe (Maybe LastModifiedInfo))
    , _pId                             :: !(Maybe Int64)
    , _pSslRequired                    :: !(Maybe Bool)
    , _pSubaccountId                   :: !(Maybe Int64)
    , _pPlacementGroupIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _pExternalId                     :: !(Maybe Text)
    , _pPlacementGroupId               :: !(Maybe Int64)
    , _pComment                        :: !(Maybe Text)
    , _pSiteId                         :: !(Maybe Int64)
    , _pCompatibility                  :: !(Maybe PlacementCompatibility)
    , _pArchived                       :: !(Maybe Bool)
    , _pPaymentApproved                :: !(Maybe Bool)
    , _pPublisherUpdateInfo            :: !(Maybe (Maybe LastModifiedInfo))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Placement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStatus'
--
-- * 'pPlacementStrategyId'
--
-- * 'pTagFormats'
--
-- * 'pSiteIdDimensionValue'
--
-- * 'pPricingSchedule'
--
-- * 'pSize'
--
-- * 'pKind'
--
-- * 'pKeyName'
--
-- * 'pCampaignIdDimensionValue'
--
-- * 'pAdvertiserId'
--
-- * 'pAdvertiserIdDimensionValue'
--
-- * 'pCampaignId'
--
-- * 'pIdDimensionValue'
--
-- * 'pPrimary'
--
-- * 'pLookbackConfiguration'
--
-- * 'pTagSetting'
--
-- * 'pContentCategoryId'
--
-- * 'pDirectorySiteIdDimensionValue'
--
-- * 'pAccountId'
--
-- * 'pPaymentSource'
--
-- * 'pName'
--
-- * 'pDirectorySiteId'
--
-- * 'pCreateInfo'
--
-- * 'pLastModifiedInfo'
--
-- * 'pId'
--
-- * 'pSslRequired'
--
-- * 'pSubaccountId'
--
-- * 'pPlacementGroupIdDimensionValue'
--
-- * 'pExternalId'
--
-- * 'pPlacementGroupId'
--
-- * 'pComment'
--
-- * 'pSiteId'
--
-- * 'pCompatibility'
--
-- * 'pArchived'
--
-- * 'pPaymentApproved'
--
-- * 'pPublisherUpdateInfo'
placement
    :: Placement
placement =
    Placement
    { _pStatus = Nothing
    , _pPlacementStrategyId = Nothing
    , _pTagFormats = Nothing
    , _pSiteIdDimensionValue = Nothing
    , _pPricingSchedule = Nothing
    , _pSize = Nothing
    , _pKind = "dfareporting#placement"
    , _pKeyName = Nothing
    , _pCampaignIdDimensionValue = Nothing
    , _pAdvertiserId = Nothing
    , _pAdvertiserIdDimensionValue = Nothing
    , _pCampaignId = Nothing
    , _pIdDimensionValue = Nothing
    , _pPrimary = Nothing
    , _pLookbackConfiguration = Nothing
    , _pTagSetting = Nothing
    , _pContentCategoryId = Nothing
    , _pDirectorySiteIdDimensionValue = Nothing
    , _pAccountId = Nothing
    , _pPaymentSource = Nothing
    , _pName = Nothing
    , _pDirectorySiteId = Nothing
    , _pCreateInfo = Nothing
    , _pLastModifiedInfo = Nothing
    , _pId = Nothing
    , _pSslRequired = Nothing
    , _pSubaccountId = Nothing
    , _pPlacementGroupIdDimensionValue = Nothing
    , _pExternalId = Nothing
    , _pPlacementGroupId = Nothing
    , _pComment = Nothing
    , _pSiteId = Nothing
    , _pCompatibility = Nothing
    , _pArchived = Nothing
    , _pPaymentApproved = Nothing
    , _pPublisherUpdateInfo = Nothing
    }

-- | Third-party placement status.
pStatus :: Lens' Placement (Maybe PlacementStatus)
pStatus = lens _pStatus (\ s a -> s{_pStatus = a})

-- | ID of the placement strategy assigned to this placement.
pPlacementStrategyId :: Lens' Placement (Maybe Int64)
pPlacementStrategyId
  = lens _pPlacementStrategyId
      (\ s a -> s{_pPlacementStrategyId = a})

-- | Tag formats to generate for this placement. This field is required on
-- insertion. Acceptable values are: - \"PLACEMENT_TAG_STANDARD\" -
-- \"PLACEMENT_TAG_IFRAME_JAVASCRIPT\" - \"PLACEMENT_TAG_IFRAME_ILAYER\" -
-- \"PLACEMENT_TAG_INTERNAL_REDIRECT\" - \"PLACEMENT_TAG_JAVASCRIPT\" -
-- \"PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT\" -
-- \"PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT\" -
-- \"PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT\" -
-- \"PLACEMENT_TAG_CLICK_COMMANDS\" -
-- \"PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH\" - \"PLACEMENT_TAG_TRACKING\" -
-- \"PLACEMENT_TAG_TRACKING_IFRAME\" -
-- \"PLACEMENT_TAG_TRACKING_JAVASCRIPT\"
pTagFormats :: Lens' Placement [PlacementItemTagFormats]
pTagFormats
  = lens _pTagFormats (\ s a -> s{_pTagFormats = a}) .
      _Default
      . _Coerce

-- | Dimension value for the ID of the site. This is a read-only,
-- auto-generated field.
pSiteIdDimensionValue :: Lens' Placement (Maybe (Maybe DimensionValue))
pSiteIdDimensionValue
  = lens _pSiteIdDimensionValue
      (\ s a -> s{_pSiteIdDimensionValue = a})

-- | Pricing schedule of this placement. This field is required on insertion,
-- specifically subfields startDate, endDate and pricingType.
pPricingSchedule :: Lens' Placement (Maybe (Maybe PricingSchedule))
pPricingSchedule
  = lens _pPricingSchedule
      (\ s a -> s{_pPricingSchedule = a})

-- | Size associated with this placement. When inserting or updating a
-- placement, only the size ID field is used. This field is required on
-- insertion.
pSize :: Lens' Placement (Maybe (Maybe Size))
pSize = lens _pSize (\ s a -> s{_pSize = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placement\".
pKind :: Lens' Placement Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | Key name of this placement. This is a read-only, auto-generated field.
pKeyName :: Lens' Placement (Maybe Text)
pKeyName = lens _pKeyName (\ s a -> s{_pKeyName = a})

-- | Dimension value for the ID of the campaign. This is a read-only,
-- auto-generated field.
pCampaignIdDimensionValue :: Lens' Placement (Maybe (Maybe DimensionValue))
pCampaignIdDimensionValue
  = lens _pCampaignIdDimensionValue
      (\ s a -> s{_pCampaignIdDimensionValue = a})

-- | Advertiser ID of this placement. This field can be left blank.
pAdvertiserId :: Lens' Placement (Maybe Int64)
pAdvertiserId
  = lens _pAdvertiserId
      (\ s a -> s{_pAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
pAdvertiserIdDimensionValue :: Lens' Placement (Maybe (Maybe DimensionValue))
pAdvertiserIdDimensionValue
  = lens _pAdvertiserIdDimensionValue
      (\ s a -> s{_pAdvertiserIdDimensionValue = a})

-- | Campaign ID of this placement. This field is a required field on
-- insertion.
pCampaignId :: Lens' Placement (Maybe Int64)
pCampaignId
  = lens _pCampaignId (\ s a -> s{_pCampaignId = a})

-- | Dimension value for the ID of this placement. This is a read-only,
-- auto-generated field.
pIdDimensionValue :: Lens' Placement (Maybe (Maybe DimensionValue))
pIdDimensionValue
  = lens _pIdDimensionValue
      (\ s a -> s{_pIdDimensionValue = a})

-- | Whether this placement is the primary placement of a roadblock
-- (placement group). You cannot change this field from true to false.
-- Setting this field to true will automatically set the primary field on
-- the original primary placement of the roadblock to false, and it will
-- automatically set the roadblock\'s primaryPlacementId field to the ID of
-- this placement.
pPrimary :: Lens' Placement (Maybe Bool)
pPrimary = lens _pPrimary (\ s a -> s{_pPrimary = a})

-- | Lookback window settings for this placement.
pLookbackConfiguration :: Lens' Placement (Maybe (Maybe LookbackConfiguration))
pLookbackConfiguration
  = lens _pLookbackConfiguration
      (\ s a -> s{_pLookbackConfiguration = a})

-- | Tag settings for this placement.
pTagSetting :: Lens' Placement (Maybe (Maybe TagSetting))
pTagSetting
  = lens _pTagSetting (\ s a -> s{_pTagSetting = a})

-- | ID of the content category assigned to this placement.
pContentCategoryId :: Lens' Placement (Maybe Int64)
pContentCategoryId
  = lens _pContentCategoryId
      (\ s a -> s{_pContentCategoryId = a})

-- | Dimension value for the ID of the directory site. This is a read-only,
-- auto-generated field.
pDirectorySiteIdDimensionValue :: Lens' Placement (Maybe (Maybe DimensionValue))
pDirectorySiteIdDimensionValue
  = lens _pDirectorySiteIdDimensionValue
      (\ s a -> s{_pDirectorySiteIdDimensionValue = a})

-- | Account ID of this placement. This field can be left blank.
pAccountId :: Lens' Placement (Maybe Int64)
pAccountId
  = lens _pAccountId (\ s a -> s{_pAccountId = a})

-- | Payment source for this placement. This is a required field that is
-- read-only after insertion.
pPaymentSource :: Lens' Placement (Maybe PlacementPaymentSource)
pPaymentSource
  = lens _pPaymentSource
      (\ s a -> s{_pPaymentSource = a})

-- | Name of this placement.This is a required field and must be less than
-- 256 characters long.
pName :: Lens' Placement (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Directory site ID of this placement. On insert, you must set either this
-- field or the siteId field to specify the site associated with this
-- placement. This is a required field that is read-only after insertion.
pDirectorySiteId :: Lens' Placement (Maybe Int64)
pDirectorySiteId
  = lens _pDirectorySiteId
      (\ s a -> s{_pDirectorySiteId = a})

-- | Information about the creation of this placement. This is a read-only
-- field.
pCreateInfo :: Lens' Placement (Maybe (Maybe LastModifiedInfo))
pCreateInfo
  = lens _pCreateInfo (\ s a -> s{_pCreateInfo = a})

-- | Information about the most recent modification of this placement. This
-- is a read-only field.
pLastModifiedInfo :: Lens' Placement (Maybe (Maybe LastModifiedInfo))
pLastModifiedInfo
  = lens _pLastModifiedInfo
      (\ s a -> s{_pLastModifiedInfo = a})

-- | ID of this placement. This is a read-only, auto-generated field.
pId :: Lens' Placement (Maybe Int64)
pId = lens _pId (\ s a -> s{_pId = a})

-- | Whether creatives assigned to this placement must be SSL-compliant.
pSslRequired :: Lens' Placement (Maybe Bool)
pSslRequired
  = lens _pSslRequired (\ s a -> s{_pSslRequired = a})

-- | Subaccount ID of this placement. This field can be left blank.
pSubaccountId :: Lens' Placement (Maybe Int64)
pSubaccountId
  = lens _pSubaccountId
      (\ s a -> s{_pSubaccountId = a})

-- | Dimension value for the ID of the placement group. This is a read-only,
-- auto-generated field.
pPlacementGroupIdDimensionValue :: Lens' Placement (Maybe (Maybe DimensionValue))
pPlacementGroupIdDimensionValue
  = lens _pPlacementGroupIdDimensionValue
      (\ s a -> s{_pPlacementGroupIdDimensionValue = a})

-- | External ID for this placement.
pExternalId :: Lens' Placement (Maybe Text)
pExternalId
  = lens _pExternalId (\ s a -> s{_pExternalId = a})

-- | ID of this placement\'s group, if applicable.
pPlacementGroupId :: Lens' Placement (Maybe Int64)
pPlacementGroupId
  = lens _pPlacementGroupId
      (\ s a -> s{_pPlacementGroupId = a})

-- | Comments for this placement.
pComment :: Lens' Placement (Maybe Text)
pComment = lens _pComment (\ s a -> s{_pComment = a})

-- | Site ID associated with this placement. On insert, you must set either
-- this field or the directorySiteId field to specify the site associated
-- with this placement. This is a required field that is read-only after
-- insertion.
pSiteId :: Lens' Placement (Maybe Int64)
pSiteId = lens _pSiteId (\ s a -> s{_pSiteId = a})

-- | Placement compatibility. WEB and WEB_INTERSTITIAL refer to rendering
-- either on desktop or on mobile devices for regular or interstitial ads,
-- respectively. APP and APP_INTERSTITIAL are for rendering in mobile
-- apps.IN_STREAM_VIDEO refers to rendering in in-stream video ads
-- developed with the VAST standard. This field is required on insertion.
pCompatibility :: Lens' Placement (Maybe PlacementCompatibility)
pCompatibility
  = lens _pCompatibility
      (\ s a -> s{_pCompatibility = a})

-- | Whether this placement is archived.
pArchived :: Lens' Placement (Maybe Bool)
pArchived
  = lens _pArchived (\ s a -> s{_pArchived = a})

-- | Whether payment was approved for this placement. This is a read-only
-- field relevant only to publisher-paid placements.
pPaymentApproved :: Lens' Placement (Maybe Bool)
pPaymentApproved
  = lens _pPaymentApproved
      (\ s a -> s{_pPaymentApproved = a})

-- | Information about the last publisher update. This is a read-only field.
pPublisherUpdateInfo :: Lens' Placement (Maybe (Maybe LastModifiedInfo))
pPublisherUpdateInfo
  = lens _pPublisherUpdateInfo
      (\ s a -> s{_pPublisherUpdateInfo = a})

instance FromJSON Placement where
        parseJSON
          = withObject "Placement"
              (\ o ->
                 Placement <$>
                   (o .:? "status") <*> (o .:? "placementStrategyId")
                     <*> (o .:? "tagFormats" .!= mempty)
                     <*> (o .:? "siteIdDimensionValue")
                     <*> (o .:? "pricingSchedule")
                     <*> (o .:? "size")
                     <*> (o .:? "kind" .!= "dfareporting#placement")
                     <*> (o .:? "keyName")
                     <*> (o .:? "campaignIdDimensionValue")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "campaignId")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "primary")
                     <*> (o .:? "lookbackConfiguration")
                     <*> (o .:? "tagSetting")
                     <*> (o .:? "contentCategoryId")
                     <*> (o .:? "directorySiteIdDimensionValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "paymentSource")
                     <*> (o .:? "name")
                     <*> (o .:? "directorySiteId")
                     <*> (o .:? "createInfo")
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "sslRequired")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "placementGroupIdDimensionValue")
                     <*> (o .:? "externalId")
                     <*> (o .:? "placementGroupId")
                     <*> (o .:? "comment")
                     <*> (o .:? "siteId")
                     <*> (o .:? "compatibility")
                     <*> (o .:? "archived")
                     <*> (o .:? "paymentApproved")
                     <*> (o .:? "publisherUpdateInfo"))

instance ToJSON Placement where
        toJSON Placement{..}
          = object
              (catMaybes
                 [("status" .=) <$> _pStatus,
                  ("placementStrategyId" .=) <$> _pPlacementStrategyId,
                  ("tagFormats" .=) <$> _pTagFormats,
                  ("siteIdDimensionValue" .=) <$>
                    _pSiteIdDimensionValue,
                  ("pricingSchedule" .=) <$> _pPricingSchedule,
                  ("size" .=) <$> _pSize, Just ("kind" .= _pKind),
                  ("keyName" .=) <$> _pKeyName,
                  ("campaignIdDimensionValue" .=) <$>
                    _pCampaignIdDimensionValue,
                  ("advertiserId" .=) <$> _pAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _pAdvertiserIdDimensionValue,
                  ("campaignId" .=) <$> _pCampaignId,
                  ("idDimensionValue" .=) <$> _pIdDimensionValue,
                  ("primary" .=) <$> _pPrimary,
                  ("lookbackConfiguration" .=) <$>
                    _pLookbackConfiguration,
                  ("tagSetting" .=) <$> _pTagSetting,
                  ("contentCategoryId" .=) <$> _pContentCategoryId,
                  ("directorySiteIdDimensionValue" .=) <$>
                    _pDirectorySiteIdDimensionValue,
                  ("accountId" .=) <$> _pAccountId,
                  ("paymentSource" .=) <$> _pPaymentSource,
                  ("name" .=) <$> _pName,
                  ("directorySiteId" .=) <$> _pDirectorySiteId,
                  ("createInfo" .=) <$> _pCreateInfo,
                  ("lastModifiedInfo" .=) <$> _pLastModifiedInfo,
                  ("id" .=) <$> _pId,
                  ("sslRequired" .=) <$> _pSslRequired,
                  ("subaccountId" .=) <$> _pSubaccountId,
                  ("placementGroupIdDimensionValue" .=) <$>
                    _pPlacementGroupIdDimensionValue,
                  ("externalId" .=) <$> _pExternalId,
                  ("placementGroupId" .=) <$> _pPlacementGroupId,
                  ("comment" .=) <$> _pComment,
                  ("siteId" .=) <$> _pSiteId,
                  ("compatibility" .=) <$> _pCompatibility,
                  ("archived" .=) <$> _pArchived,
                  ("paymentApproved" .=) <$> _pPaymentApproved,
                  ("publisherUpdateInfo" .=) <$>
                    _pPublisherUpdateInfo])

-- | Placement Assignment.
--
-- /See:/ 'placementAssignment' smart constructor.
data PlacementAssignment = PlacementAssignment
    { _paPlacementId               :: !(Maybe Int64)
    , _paPlacementIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _paActive                    :: !(Maybe Bool)
    , _paSslRequired               :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paPlacementId'
--
-- * 'paPlacementIdDimensionValue'
--
-- * 'paActive'
--
-- * 'paSslRequired'
placementAssignment
    :: PlacementAssignment
placementAssignment =
    PlacementAssignment
    { _paPlacementId = Nothing
    , _paPlacementIdDimensionValue = Nothing
    , _paActive = Nothing
    , _paSslRequired = Nothing
    }

-- | ID of the placement to be assigned. This is a required field.
paPlacementId :: Lens' PlacementAssignment (Maybe Int64)
paPlacementId
  = lens _paPlacementId
      (\ s a -> s{_paPlacementId = a})

-- | Dimension value for the ID of the placement. This is a read-only,
-- auto-generated field.
paPlacementIdDimensionValue :: Lens' PlacementAssignment (Maybe (Maybe DimensionValue))
paPlacementIdDimensionValue
  = lens _paPlacementIdDimensionValue
      (\ s a -> s{_paPlacementIdDimensionValue = a})

-- | Whether this placement assignment is active. When true, the placement
-- will be included in the ad\'s rotation.
paActive :: Lens' PlacementAssignment (Maybe Bool)
paActive = lens _paActive (\ s a -> s{_paActive = a})

-- | Whether the placement to be assigned requires SSL. This is a read-only
-- field that is auto-generated when the ad is inserted or updated.
paSslRequired :: Lens' PlacementAssignment (Maybe Bool)
paSslRequired
  = lens _paSslRequired
      (\ s a -> s{_paSslRequired = a})

instance FromJSON PlacementAssignment where
        parseJSON
          = withObject "PlacementAssignment"
              (\ o ->
                 PlacementAssignment <$>
                   (o .:? "placementId") <*>
                     (o .:? "placementIdDimensionValue")
                     <*> (o .:? "active")
                     <*> (o .:? "sslRequired"))

instance ToJSON PlacementAssignment where
        toJSON PlacementAssignment{..}
          = object
              (catMaybes
                 [("placementId" .=) <$> _paPlacementId,
                  ("placementIdDimensionValue" .=) <$>
                    _paPlacementIdDimensionValue,
                  ("active" .=) <$> _paActive,
                  ("sslRequired" .=) <$> _paSslRequired])

-- | Contains properties of a package or roadblock.
--
-- /See:/ 'placementGroup' smart constructor.
data PlacementGroup = PlacementGroup
    { _pgPlacementStrategyId              :: !(Maybe Int64)
    , _pgSiteIdDimensionValue             :: !(Maybe (Maybe DimensionValue))
    , _pgPricingSchedule                  :: !(Maybe (Maybe PricingSchedule))
    , _pgKind                             :: !Text
    , _pgCampaignIdDimensionValue         :: !(Maybe (Maybe DimensionValue))
    , _pgAdvertiserId                     :: !(Maybe Int64)
    , _pgAdvertiserIdDimensionValue       :: !(Maybe (Maybe DimensionValue))
    , _pgCampaignId                       :: !(Maybe Int64)
    , _pgIdDimensionValue                 :: !(Maybe (Maybe DimensionValue))
    , _pgPlacementGroupType               :: !(Maybe PlacementGroupPlacementGroupType)
    , _pgContentCategoryId                :: !(Maybe Int64)
    , _pgDirectorySiteIdDimensionValue    :: !(Maybe (Maybe DimensionValue))
    , _pgAccountId                        :: !(Maybe Int64)
    , _pgName                             :: !(Maybe Text)
    , _pgDirectorySiteId                  :: !(Maybe Int64)
    , _pgCreateInfo                       :: !(Maybe (Maybe LastModifiedInfo))
    , _pgChildPlacementIds                :: !(Maybe [Int64])
    , _pgLastModifiedInfo                 :: !(Maybe (Maybe LastModifiedInfo))
    , _pgId                               :: !(Maybe Int64)
    , _pgPrimaryPlacementId               :: !(Maybe Int64)
    , _pgSubaccountId                     :: !(Maybe Int64)
    , _pgExternalId                       :: !(Maybe Text)
    , _pgComment                          :: !(Maybe Text)
    , _pgPrimaryPlacementIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _pgSiteId                           :: !(Maybe Int64)
    , _pgArchived                         :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgPlacementStrategyId'
--
-- * 'pgSiteIdDimensionValue'
--
-- * 'pgPricingSchedule'
--
-- * 'pgKind'
--
-- * 'pgCampaignIdDimensionValue'
--
-- * 'pgAdvertiserId'
--
-- * 'pgAdvertiserIdDimensionValue'
--
-- * 'pgCampaignId'
--
-- * 'pgIdDimensionValue'
--
-- * 'pgPlacementGroupType'
--
-- * 'pgContentCategoryId'
--
-- * 'pgDirectorySiteIdDimensionValue'
--
-- * 'pgAccountId'
--
-- * 'pgName'
--
-- * 'pgDirectorySiteId'
--
-- * 'pgCreateInfo'
--
-- * 'pgChildPlacementIds'
--
-- * 'pgLastModifiedInfo'
--
-- * 'pgId'
--
-- * 'pgPrimaryPlacementId'
--
-- * 'pgSubaccountId'
--
-- * 'pgExternalId'
--
-- * 'pgComment'
--
-- * 'pgPrimaryPlacementIdDimensionValue'
--
-- * 'pgSiteId'
--
-- * 'pgArchived'
placementGroup
    :: PlacementGroup
placementGroup =
    PlacementGroup
    { _pgPlacementStrategyId = Nothing
    , _pgSiteIdDimensionValue = Nothing
    , _pgPricingSchedule = Nothing
    , _pgKind = "dfareporting#placementGroup"
    , _pgCampaignIdDimensionValue = Nothing
    , _pgAdvertiserId = Nothing
    , _pgAdvertiserIdDimensionValue = Nothing
    , _pgCampaignId = Nothing
    , _pgIdDimensionValue = Nothing
    , _pgPlacementGroupType = Nothing
    , _pgContentCategoryId = Nothing
    , _pgDirectorySiteIdDimensionValue = Nothing
    , _pgAccountId = Nothing
    , _pgName = Nothing
    , _pgDirectorySiteId = Nothing
    , _pgCreateInfo = Nothing
    , _pgChildPlacementIds = Nothing
    , _pgLastModifiedInfo = Nothing
    , _pgId = Nothing
    , _pgPrimaryPlacementId = Nothing
    , _pgSubaccountId = Nothing
    , _pgExternalId = Nothing
    , _pgComment = Nothing
    , _pgPrimaryPlacementIdDimensionValue = Nothing
    , _pgSiteId = Nothing
    , _pgArchived = Nothing
    }

-- | ID of the placement strategy assigned to this placement group.
pgPlacementStrategyId :: Lens' PlacementGroup (Maybe Int64)
pgPlacementStrategyId
  = lens _pgPlacementStrategyId
      (\ s a -> s{_pgPlacementStrategyId = a})

-- | Dimension value for the ID of the site. This is a read-only,
-- auto-generated field.
pgSiteIdDimensionValue :: Lens' PlacementGroup (Maybe (Maybe DimensionValue))
pgSiteIdDimensionValue
  = lens _pgSiteIdDimensionValue
      (\ s a -> s{_pgSiteIdDimensionValue = a})

-- | Pricing schedule of this placement group. This field is required on
-- insertion.
pgPricingSchedule :: Lens' PlacementGroup (Maybe (Maybe PricingSchedule))
pgPricingSchedule
  = lens _pgPricingSchedule
      (\ s a -> s{_pgPricingSchedule = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placementGroup\".
pgKind :: Lens' PlacementGroup Text
pgKind = lens _pgKind (\ s a -> s{_pgKind = a})

-- | Dimension value for the ID of the campaign. This is a read-only,
-- auto-generated field.
pgCampaignIdDimensionValue :: Lens' PlacementGroup (Maybe (Maybe DimensionValue))
pgCampaignIdDimensionValue
  = lens _pgCampaignIdDimensionValue
      (\ s a -> s{_pgCampaignIdDimensionValue = a})

-- | Advertiser ID of this placement group. This is a required field on
-- insertion.
pgAdvertiserId :: Lens' PlacementGroup (Maybe Int64)
pgAdvertiserId
  = lens _pgAdvertiserId
      (\ s a -> s{_pgAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
pgAdvertiserIdDimensionValue :: Lens' PlacementGroup (Maybe (Maybe DimensionValue))
pgAdvertiserIdDimensionValue
  = lens _pgAdvertiserIdDimensionValue
      (\ s a -> s{_pgAdvertiserIdDimensionValue = a})

-- | Campaign ID of this placement group. This field is required on
-- insertion.
pgCampaignId :: Lens' PlacementGroup (Maybe Int64)
pgCampaignId
  = lens _pgCampaignId (\ s a -> s{_pgCampaignId = a})

-- | Dimension value for the ID of this placement group. This is a read-only,
-- auto-generated field.
pgIdDimensionValue :: Lens' PlacementGroup (Maybe (Maybe DimensionValue))
pgIdDimensionValue
  = lens _pgIdDimensionValue
      (\ s a -> s{_pgIdDimensionValue = a})

-- | Type of this placement group. A package is a simple group of placements
-- that acts as a single pricing point for a group of tags. A roadblock is
-- a group of placements that not only acts as a single pricing point, but
-- also assumes that all the tags in it will be served at the same time. A
-- roadblock requires one of its assigned placements to be marked as
-- primary for reporting. This field is required on insertion.
pgPlacementGroupType :: Lens' PlacementGroup (Maybe PlacementGroupPlacementGroupType)
pgPlacementGroupType
  = lens _pgPlacementGroupType
      (\ s a -> s{_pgPlacementGroupType = a})

-- | ID of the content category assigned to this placement group.
pgContentCategoryId :: Lens' PlacementGroup (Maybe Int64)
pgContentCategoryId
  = lens _pgContentCategoryId
      (\ s a -> s{_pgContentCategoryId = a})

-- | Dimension value for the ID of the directory site. This is a read-only,
-- auto-generated field.
pgDirectorySiteIdDimensionValue :: Lens' PlacementGroup (Maybe (Maybe DimensionValue))
pgDirectorySiteIdDimensionValue
  = lens _pgDirectorySiteIdDimensionValue
      (\ s a -> s{_pgDirectorySiteIdDimensionValue = a})

-- | Account ID of this placement group. This is a read-only field that can
-- be left blank.
pgAccountId :: Lens' PlacementGroup (Maybe Int64)
pgAccountId
  = lens _pgAccountId (\ s a -> s{_pgAccountId = a})

-- | Name of this placement group. This is a required field and must be less
-- than 256 characters long.
pgName :: Lens' PlacementGroup (Maybe Text)
pgName = lens _pgName (\ s a -> s{_pgName = a})

-- | Directory site ID associated with this placement group. On insert, you
-- must set either this field or the site_id field to specify the site
-- associated with this placement group. This is a required field that is
-- read-only after insertion.
pgDirectorySiteId :: Lens' PlacementGroup (Maybe Int64)
pgDirectorySiteId
  = lens _pgDirectorySiteId
      (\ s a -> s{_pgDirectorySiteId = a})

-- | Information about the creation of this placement group. This is a
-- read-only field.
pgCreateInfo :: Lens' PlacementGroup (Maybe (Maybe LastModifiedInfo))
pgCreateInfo
  = lens _pgCreateInfo (\ s a -> s{_pgCreateInfo = a})

-- | IDs of placements which are assigned to this placement group. This is a
-- read-only, auto-generated field.
pgChildPlacementIds :: Lens' PlacementGroup [Int64]
pgChildPlacementIds
  = lens _pgChildPlacementIds
      (\ s a -> s{_pgChildPlacementIds = a})
      . _Default
      . _Coerce

-- | Information about the most recent modification of this placement group.
-- This is a read-only field.
pgLastModifiedInfo :: Lens' PlacementGroup (Maybe (Maybe LastModifiedInfo))
pgLastModifiedInfo
  = lens _pgLastModifiedInfo
      (\ s a -> s{_pgLastModifiedInfo = a})

-- | ID of this placement group. This is a read-only, auto-generated field.
pgId :: Lens' PlacementGroup (Maybe Int64)
pgId = lens _pgId (\ s a -> s{_pgId = a})

-- | ID of the primary placement, used to calculate the media cost of a
-- roadblock (placement group). Modifying this field will automatically
-- modify the primary field on all affected roadblock child placements.
pgPrimaryPlacementId :: Lens' PlacementGroup (Maybe Int64)
pgPrimaryPlacementId
  = lens _pgPrimaryPlacementId
      (\ s a -> s{_pgPrimaryPlacementId = a})

-- | Subaccount ID of this placement group. This is a read-only field that
-- can be left blank.
pgSubaccountId :: Lens' PlacementGroup (Maybe Int64)
pgSubaccountId
  = lens _pgSubaccountId
      (\ s a -> s{_pgSubaccountId = a})

-- | External ID for this placement.
pgExternalId :: Lens' PlacementGroup (Maybe Text)
pgExternalId
  = lens _pgExternalId (\ s a -> s{_pgExternalId = a})

-- | Comments for this placement group.
pgComment :: Lens' PlacementGroup (Maybe Text)
pgComment
  = lens _pgComment (\ s a -> s{_pgComment = a})

-- | Dimension value for the ID of the primary placement. This is a
-- read-only, auto-generated field.
pgPrimaryPlacementIdDimensionValue :: Lens' PlacementGroup (Maybe (Maybe DimensionValue))
pgPrimaryPlacementIdDimensionValue
  = lens _pgPrimaryPlacementIdDimensionValue
      (\ s a -> s{_pgPrimaryPlacementIdDimensionValue = a})

-- | Site ID associated with this placement group. On insert, you must set
-- either this field or the directorySiteId field to specify the site
-- associated with this placement group. This is a required field that is
-- read-only after insertion.
pgSiteId :: Lens' PlacementGroup (Maybe Int64)
pgSiteId = lens _pgSiteId (\ s a -> s{_pgSiteId = a})

-- | Whether this placement group is archived.
pgArchived :: Lens' PlacementGroup (Maybe Bool)
pgArchived
  = lens _pgArchived (\ s a -> s{_pgArchived = a})

instance FromJSON PlacementGroup where
        parseJSON
          = withObject "PlacementGroup"
              (\ o ->
                 PlacementGroup <$>
                   (o .:? "placementStrategyId") <*>
                     (o .:? "siteIdDimensionValue")
                     <*> (o .:? "pricingSchedule")
                     <*> (o .:? "kind" .!= "dfareporting#placementGroup")
                     <*> (o .:? "campaignIdDimensionValue")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "campaignId")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "placementGroupType")
                     <*> (o .:? "contentCategoryId")
                     <*> (o .:? "directorySiteIdDimensionValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "directorySiteId")
                     <*> (o .:? "createInfo")
                     <*> (o .:? "childPlacementIds" .!= mempty)
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryPlacementId")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "externalId")
                     <*> (o .:? "comment")
                     <*> (o .:? "primaryPlacementIdDimensionValue")
                     <*> (o .:? "siteId")
                     <*> (o .:? "archived"))

instance ToJSON PlacementGroup where
        toJSON PlacementGroup{..}
          = object
              (catMaybes
                 [("placementStrategyId" .=) <$>
                    _pgPlacementStrategyId,
                  ("siteIdDimensionValue" .=) <$>
                    _pgSiteIdDimensionValue,
                  ("pricingSchedule" .=) <$> _pgPricingSchedule,
                  Just ("kind" .= _pgKind),
                  ("campaignIdDimensionValue" .=) <$>
                    _pgCampaignIdDimensionValue,
                  ("advertiserId" .=) <$> _pgAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _pgAdvertiserIdDimensionValue,
                  ("campaignId" .=) <$> _pgCampaignId,
                  ("idDimensionValue" .=) <$> _pgIdDimensionValue,
                  ("placementGroupType" .=) <$> _pgPlacementGroupType,
                  ("contentCategoryId" .=) <$> _pgContentCategoryId,
                  ("directorySiteIdDimensionValue" .=) <$>
                    _pgDirectorySiteIdDimensionValue,
                  ("accountId" .=) <$> _pgAccountId,
                  ("name" .=) <$> _pgName,
                  ("directorySiteId" .=) <$> _pgDirectorySiteId,
                  ("createInfo" .=) <$> _pgCreateInfo,
                  ("childPlacementIds" .=) <$> _pgChildPlacementIds,
                  ("lastModifiedInfo" .=) <$> _pgLastModifiedInfo,
                  ("id" .=) <$> _pgId,
                  ("primaryPlacementId" .=) <$> _pgPrimaryPlacementId,
                  ("subaccountId" .=) <$> _pgSubaccountId,
                  ("externalId" .=) <$> _pgExternalId,
                  ("comment" .=) <$> _pgComment,
                  ("primaryPlacementIdDimensionValue" .=) <$>
                    _pgPrimaryPlacementIdDimensionValue,
                  ("siteId" .=) <$> _pgSiteId,
                  ("archived" .=) <$> _pgArchived])

-- | Placement Group List Response
--
-- /See:/ 'placementGroupsListResponse' smart constructor.
data PlacementGroupsListResponse = PlacementGroupsListResponse
    { _pglrNextPageToken   :: !(Maybe Text)
    , _pglrKind            :: !Text
    , _pglrPlacementGroups :: !(Maybe [Maybe PlacementGroup])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pglrNextPageToken'
--
-- * 'pglrKind'
--
-- * 'pglrPlacementGroups'
placementGroupsListResponse
    :: PlacementGroupsListResponse
placementGroupsListResponse =
    PlacementGroupsListResponse
    { _pglrNextPageToken = Nothing
    , _pglrKind = "dfareporting#placementGroupsListResponse"
    , _pglrPlacementGroups = Nothing
    }

-- | Pagination token to be used for the next list operation.
pglrNextPageToken :: Lens' PlacementGroupsListResponse (Maybe Text)
pglrNextPageToken
  = lens _pglrNextPageToken
      (\ s a -> s{_pglrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placementGroupsListResponse\".
pglrKind :: Lens' PlacementGroupsListResponse Text
pglrKind = lens _pglrKind (\ s a -> s{_pglrKind = a})

-- | Placement group collection.
pglrPlacementGroups :: Lens' PlacementGroupsListResponse [Maybe PlacementGroup]
pglrPlacementGroups
  = lens _pglrPlacementGroups
      (\ s a -> s{_pglrPlacementGroups = a})
      . _Default
      . _Coerce

instance FromJSON PlacementGroupsListResponse where
        parseJSON
          = withObject "PlacementGroupsListResponse"
              (\ o ->
                 PlacementGroupsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#placementGroupsListResponse")
                     <*> (o .:? "placementGroups" .!= mempty))

instance ToJSON PlacementGroupsListResponse where
        toJSON PlacementGroupsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _pglrNextPageToken,
                  Just ("kind" .= _pglrKind),
                  ("placementGroups" .=) <$> _pglrPlacementGroups])

-- | Placement Strategy List Response
--
-- /See:/ 'placementStrategiesListResponse' smart constructor.
data PlacementStrategiesListResponse = PlacementStrategiesListResponse
    { _pslrPlacementStrategies :: !(Maybe [Maybe PlacementStrategy])
    , _pslrNextPageToken       :: !(Maybe Text)
    , _pslrKind                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslrPlacementStrategies'
--
-- * 'pslrNextPageToken'
--
-- * 'pslrKind'
placementStrategiesListResponse
    :: PlacementStrategiesListResponse
placementStrategiesListResponse =
    PlacementStrategiesListResponse
    { _pslrPlacementStrategies = Nothing
    , _pslrNextPageToken = Nothing
    , _pslrKind = "dfareporting#placementStrategiesListResponse"
    }

-- | Placement strategy collection.
pslrPlacementStrategies :: Lens' PlacementStrategiesListResponse [Maybe PlacementStrategy]
pslrPlacementStrategies
  = lens _pslrPlacementStrategies
      (\ s a -> s{_pslrPlacementStrategies = a})
      . _Default
      . _Coerce

-- | Pagination token to be used for the next list operation.
pslrNextPageToken :: Lens' PlacementStrategiesListResponse (Maybe Text)
pslrNextPageToken
  = lens _pslrNextPageToken
      (\ s a -> s{_pslrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placementStrategiesListResponse\".
pslrKind :: Lens' PlacementStrategiesListResponse Text
pslrKind = lens _pslrKind (\ s a -> s{_pslrKind = a})

instance FromJSON PlacementStrategiesListResponse
         where
        parseJSON
          = withObject "PlacementStrategiesListResponse"
              (\ o ->
                 PlacementStrategiesListResponse <$>
                   (o .:? "placementStrategies" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#placementStrategiesListResponse"))

instance ToJSON PlacementStrategiesListResponse where
        toJSON PlacementStrategiesListResponse{..}
          = object
              (catMaybes
                 [("placementStrategies" .=) <$>
                    _pslrPlacementStrategies,
                  ("nextPageToken" .=) <$> _pslrNextPageToken,
                  Just ("kind" .= _pslrKind)])

-- | Contains properties of a placement strategy.
--
-- /See:/ 'placementStrategy' smart constructor.
data PlacementStrategy = PlacementStrategy
    { _psKind      :: !Text
    , _psAccountId :: !(Maybe Int64)
    , _psName      :: !(Maybe Text)
    , _psId        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psKind'
--
-- * 'psAccountId'
--
-- * 'psName'
--
-- * 'psId'
placementStrategy
    :: PlacementStrategy
placementStrategy =
    PlacementStrategy
    { _psKind = "dfareporting#placementStrategy"
    , _psAccountId = Nothing
    , _psName = Nothing
    , _psId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placementStrategy\".
psKind :: Lens' PlacementStrategy Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | Account ID of this placement strategy.This is a read-only field that can
-- be left blank.
psAccountId :: Lens' PlacementStrategy (Maybe Int64)
psAccountId
  = lens _psAccountId (\ s a -> s{_psAccountId = a})

-- | Name of this placement strategy. This is a required field. It must be
-- less than 256 characters long and unique among placement strategies of
-- the same account.
psName :: Lens' PlacementStrategy (Maybe Text)
psName = lens _psName (\ s a -> s{_psName = a})

-- | ID of this placement strategy. This is a read-only, auto-generated
-- field.
psId :: Lens' PlacementStrategy (Maybe Int64)
psId = lens _psId (\ s a -> s{_psId = a})

instance FromJSON PlacementStrategy where
        parseJSON
          = withObject "PlacementStrategy"
              (\ o ->
                 PlacementStrategy <$>
                   (o .:? "kind" .!= "dfareporting#placementStrategy")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON PlacementStrategy where
        toJSON PlacementStrategy{..}
          = object
              (catMaybes
                 [Just ("kind" .= _psKind),
                  ("accountId" .=) <$> _psAccountId,
                  ("name" .=) <$> _psName, ("id" .=) <$> _psId])

-- | Placement Tag
--
-- /See:/ 'placementTag' smart constructor.
data PlacementTag = PlacementTag
    { _ptPlacementId :: !(Maybe Int64)
    , _ptTagDatas    :: !(Maybe [Maybe TagData])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptPlacementId'
--
-- * 'ptTagDatas'
placementTag
    :: PlacementTag
placementTag =
    PlacementTag
    { _ptPlacementId = Nothing
    , _ptTagDatas = Nothing
    }

-- | Placement ID
ptPlacementId :: Lens' PlacementTag (Maybe Int64)
ptPlacementId
  = lens _ptPlacementId
      (\ s a -> s{_ptPlacementId = a})

-- | Tags generated for this placement.
ptTagDatas :: Lens' PlacementTag [Maybe TagData]
ptTagDatas
  = lens _ptTagDatas (\ s a -> s{_ptTagDatas = a}) .
      _Default
      . _Coerce

instance FromJSON PlacementTag where
        parseJSON
          = withObject "PlacementTag"
              (\ o ->
                 PlacementTag <$>
                   (o .:? "placementId") <*>
                     (o .:? "tagDatas" .!= mempty))

instance ToJSON PlacementTag where
        toJSON PlacementTag{..}
          = object
              (catMaybes
                 [("placementId" .=) <$> _ptPlacementId,
                  ("tagDatas" .=) <$> _ptTagDatas])

-- | Placement GenerateTags Response
--
-- /See:/ 'placementsGenerateTagsResponse' smart constructor.
data PlacementsGenerateTagsResponse = PlacementsGenerateTagsResponse
    { _pgtrKind          :: !Text
    , _pgtrPlacementTags :: !(Maybe [Maybe PlacementTag])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGenerateTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgtrKind'
--
-- * 'pgtrPlacementTags'
placementsGenerateTagsResponse
    :: PlacementsGenerateTagsResponse
placementsGenerateTagsResponse =
    PlacementsGenerateTagsResponse
    { _pgtrKind = "dfareporting#placementsGenerateTagsResponse"
    , _pgtrPlacementTags = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placementsGenerateTagsResponse\".
pgtrKind :: Lens' PlacementsGenerateTagsResponse Text
pgtrKind = lens _pgtrKind (\ s a -> s{_pgtrKind = a})

-- | Set of generated tags for the specified placements.
pgtrPlacementTags :: Lens' PlacementsGenerateTagsResponse [Maybe PlacementTag]
pgtrPlacementTags
  = lens _pgtrPlacementTags
      (\ s a -> s{_pgtrPlacementTags = a})
      . _Default
      . _Coerce

instance FromJSON PlacementsGenerateTagsResponse
         where
        parseJSON
          = withObject "PlacementsGenerateTagsResponse"
              (\ o ->
                 PlacementsGenerateTagsResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#placementsGenerateTagsResponse")
                     <*> (o .:? "placementTags" .!= mempty))

instance ToJSON PlacementsGenerateTagsResponse where
        toJSON PlacementsGenerateTagsResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pgtrKind),
                  ("placementTags" .=) <$> _pgtrPlacementTags])

-- | Placement List Response
--
-- /See:/ 'placementsListResponse' smart constructor.
data PlacementsListResponse = PlacementsListResponse
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind          :: !Text
    , _plrPlacements    :: !(Maybe [Maybe Placement])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrKind'
--
-- * 'plrPlacements'
placementsListResponse
    :: PlacementsListResponse
placementsListResponse =
    PlacementsListResponse
    { _plrNextPageToken = Nothing
    , _plrKind = "dfareporting#placementsListResponse"
    , _plrPlacements = Nothing
    }

-- | Pagination token to be used for the next list operation.
plrNextPageToken :: Lens' PlacementsListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#placementsListResponse\".
plrKind :: Lens' PlacementsListResponse Text
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

-- | Placement collection.
plrPlacements :: Lens' PlacementsListResponse [Maybe Placement]
plrPlacements
  = lens _plrPlacements
      (\ s a -> s{_plrPlacements = a})
      . _Default
      . _Coerce

instance FromJSON PlacementsListResponse where
        parseJSON
          = withObject "PlacementsListResponse"
              (\ o ->
                 PlacementsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#placementsListResponse")
                     <*> (o .:? "placements" .!= mempty))

instance ToJSON PlacementsListResponse where
        toJSON PlacementsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  Just ("kind" .= _plrKind),
                  ("placements" .=) <$> _plrPlacements])

-- | Contains information about a platform type that can be targeted by ads.
--
-- /See:/ 'platformType' smart constructor.
data PlatformType = PlatformType
    { _ptKind :: !Text
    , _ptName :: !(Maybe Text)
    , _ptId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptKind'
--
-- * 'ptName'
--
-- * 'ptId'
platformType
    :: PlatformType
platformType =
    PlatformType
    { _ptKind = "dfareporting#platformType"
    , _ptName = Nothing
    , _ptId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#platformType\".
ptKind :: Lens' PlatformType Text
ptKind = lens _ptKind (\ s a -> s{_ptKind = a})

-- | Name of this platform type.
ptName :: Lens' PlatformType (Maybe Text)
ptName = lens _ptName (\ s a -> s{_ptName = a})

-- | ID of this platform type.
ptId :: Lens' PlatformType (Maybe Int64)
ptId = lens _ptId (\ s a -> s{_ptId = a})

instance FromJSON PlatformType where
        parseJSON
          = withObject "PlatformType"
              (\ o ->
                 PlatformType <$>
                   (o .:? "kind" .!= "dfareporting#platformType") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON PlatformType where
        toJSON PlatformType{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ptKind), ("name" .=) <$> _ptName,
                  ("id" .=) <$> _ptId])

-- | Platform Type List Response
--
-- /See:/ 'platformTypesListResponse' smart constructor.
data PlatformTypesListResponse = PlatformTypesListResponse
    { _ptlrKind          :: !Text
    , _ptlrPlatformTypes :: !(Maybe [Maybe PlatformType])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformTypesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlrKind'
--
-- * 'ptlrPlatformTypes'
platformTypesListResponse
    :: PlatformTypesListResponse
platformTypesListResponse =
    PlatformTypesListResponse
    { _ptlrKind = "dfareporting#platformTypesListResponse"
    , _ptlrPlatformTypes = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#platformTypesListResponse\".
ptlrKind :: Lens' PlatformTypesListResponse Text
ptlrKind = lens _ptlrKind (\ s a -> s{_ptlrKind = a})

-- | Platform type collection.
ptlrPlatformTypes :: Lens' PlatformTypesListResponse [Maybe PlatformType]
ptlrPlatformTypes
  = lens _ptlrPlatformTypes
      (\ s a -> s{_ptlrPlatformTypes = a})
      . _Default
      . _Coerce

instance FromJSON PlatformTypesListResponse where
        parseJSON
          = withObject "PlatformTypesListResponse"
              (\ o ->
                 PlatformTypesListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#platformTypesListResponse")
                     <*> (o .:? "platformTypes" .!= mempty))

instance ToJSON PlatformTypesListResponse where
        toJSON PlatformTypesListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ptlrKind),
                  ("platformTypes" .=) <$> _ptlrPlatformTypes])

-- | Popup Window Properties.
--
-- /See:/ 'popupWindowProperties' smart constructor.
data PopupWindowProperties = PopupWindowProperties
    { _pwpOffset         :: !(Maybe (Maybe OffsetPosition))
    , _pwpDimension      :: !(Maybe (Maybe Size))
    , _pwpShowStatusBar  :: !(Maybe Bool)
    , _pwpShowMenuBar    :: !(Maybe Bool)
    , _pwpPositionType   :: !(Maybe PopupWindowPropertiesPositionType)
    , _pwpShowAddressBar :: !(Maybe Bool)
    , _pwpShowScrollBar  :: !(Maybe Bool)
    , _pwpShowToolBar    :: !(Maybe Bool)
    , _pwpTitle          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PopupWindowProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pwpOffset'
--
-- * 'pwpDimension'
--
-- * 'pwpShowStatusBar'
--
-- * 'pwpShowMenuBar'
--
-- * 'pwpPositionType'
--
-- * 'pwpShowAddressBar'
--
-- * 'pwpShowScrollBar'
--
-- * 'pwpShowToolBar'
--
-- * 'pwpTitle'
popupWindowProperties
    :: PopupWindowProperties
popupWindowProperties =
    PopupWindowProperties
    { _pwpOffset = Nothing
    , _pwpDimension = Nothing
    , _pwpShowStatusBar = Nothing
    , _pwpShowMenuBar = Nothing
    , _pwpPositionType = Nothing
    , _pwpShowAddressBar = Nothing
    , _pwpShowScrollBar = Nothing
    , _pwpShowToolBar = Nothing
    , _pwpTitle = Nothing
    }

-- | Upper-left corner coordinates of the popup window. Applicable if
-- positionType is COORDINATES.
pwpOffset :: Lens' PopupWindowProperties (Maybe (Maybe OffsetPosition))
pwpOffset
  = lens _pwpOffset (\ s a -> s{_pwpOffset = a})

-- | Popup dimension for a creative. This is a read-only field. Applicable to
-- the following creative types: all RICH_MEDIA and all VPAID
pwpDimension :: Lens' PopupWindowProperties (Maybe (Maybe Size))
pwpDimension
  = lens _pwpDimension (\ s a -> s{_pwpDimension = a})

-- | Whether to display the browser status bar.
pwpShowStatusBar :: Lens' PopupWindowProperties (Maybe Bool)
pwpShowStatusBar
  = lens _pwpShowStatusBar
      (\ s a -> s{_pwpShowStatusBar = a})

-- | Whether to display the browser menu bar.
pwpShowMenuBar :: Lens' PopupWindowProperties (Maybe Bool)
pwpShowMenuBar
  = lens _pwpShowMenuBar
      (\ s a -> s{_pwpShowMenuBar = a})

-- | Popup window position either centered or at specific coordinate.
pwpPositionType :: Lens' PopupWindowProperties (Maybe PopupWindowPropertiesPositionType)
pwpPositionType
  = lens _pwpPositionType
      (\ s a -> s{_pwpPositionType = a})

-- | Whether to display the browser address bar.
pwpShowAddressBar :: Lens' PopupWindowProperties (Maybe Bool)
pwpShowAddressBar
  = lens _pwpShowAddressBar
      (\ s a -> s{_pwpShowAddressBar = a})

-- | Whether to display the browser scroll bar.
pwpShowScrollBar :: Lens' PopupWindowProperties (Maybe Bool)
pwpShowScrollBar
  = lens _pwpShowScrollBar
      (\ s a -> s{_pwpShowScrollBar = a})

-- | Whether to display the browser tool bar.
pwpShowToolBar :: Lens' PopupWindowProperties (Maybe Bool)
pwpShowToolBar
  = lens _pwpShowToolBar
      (\ s a -> s{_pwpShowToolBar = a})

-- | Title of popup window.
pwpTitle :: Lens' PopupWindowProperties (Maybe Text)
pwpTitle = lens _pwpTitle (\ s a -> s{_pwpTitle = a})

instance FromJSON PopupWindowProperties where
        parseJSON
          = withObject "PopupWindowProperties"
              (\ o ->
                 PopupWindowProperties <$>
                   (o .:? "offset") <*> (o .:? "dimension") <*>
                     (o .:? "showStatusBar")
                     <*> (o .:? "showMenuBar")
                     <*> (o .:? "positionType")
                     <*> (o .:? "showAddressBar")
                     <*> (o .:? "showScrollBar")
                     <*> (o .:? "showToolBar")
                     <*> (o .:? "title"))

instance ToJSON PopupWindowProperties where
        toJSON PopupWindowProperties{..}
          = object
              (catMaybes
                 [("offset" .=) <$> _pwpOffset,
                  ("dimension" .=) <$> _pwpDimension,
                  ("showStatusBar" .=) <$> _pwpShowStatusBar,
                  ("showMenuBar" .=) <$> _pwpShowMenuBar,
                  ("positionType" .=) <$> _pwpPositionType,
                  ("showAddressBar" .=) <$> _pwpShowAddressBar,
                  ("showScrollBar" .=) <$> _pwpShowScrollBar,
                  ("showToolBar" .=) <$> _pwpShowToolBar,
                  ("title" .=) <$> _pwpTitle])

-- | Contains information about a postal code that can be targeted by ads.
--
-- /See:/ 'postalCode' smart constructor.
data PostalCode = PostalCode
    { _pcKind          :: !Text
    , _pcCode          :: !(Maybe Text)
    , _pcCountryCode   :: !(Maybe Text)
    , _pcId            :: !(Maybe Text)
    , _pcCountryDartId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcKind'
--
-- * 'pcCode'
--
-- * 'pcCountryCode'
--
-- * 'pcId'
--
-- * 'pcCountryDartId'
postalCode
    :: PostalCode
postalCode =
    PostalCode
    { _pcKind = "dfareporting#postalCode"
    , _pcCode = Nothing
    , _pcCountryCode = Nothing
    , _pcId = Nothing
    , _pcCountryDartId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#postalCode\".
pcKind :: Lens' PostalCode Text
pcKind = lens _pcKind (\ s a -> s{_pcKind = a})

-- | Postal code. This is equivalent to the id field.
pcCode :: Lens' PostalCode (Maybe Text)
pcCode = lens _pcCode (\ s a -> s{_pcCode = a})

-- | Country code of the country to which this postal code belongs.
pcCountryCode :: Lens' PostalCode (Maybe Text)
pcCountryCode
  = lens _pcCountryCode
      (\ s a -> s{_pcCountryCode = a})

-- | ID of this postal code.
pcId :: Lens' PostalCode (Maybe Text)
pcId = lens _pcId (\ s a -> s{_pcId = a})

-- | DART ID of the country to which this postal code belongs.
pcCountryDartId :: Lens' PostalCode (Maybe Int64)
pcCountryDartId
  = lens _pcCountryDartId
      (\ s a -> s{_pcCountryDartId = a})

instance FromJSON PostalCode where
        parseJSON
          = withObject "PostalCode"
              (\ o ->
                 PostalCode <$>
                   (o .:? "kind" .!= "dfareporting#postalCode") <*>
                     (o .:? "code")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "id")
                     <*> (o .:? "countryDartId"))

instance ToJSON PostalCode where
        toJSON PostalCode{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pcKind), ("code" .=) <$> _pcCode,
                  ("countryCode" .=) <$> _pcCountryCode,
                  ("id" .=) <$> _pcId,
                  ("countryDartId" .=) <$> _pcCountryDartId])

-- | Postal Code List Response
--
-- /See:/ 'postalCodesListResponse' smart constructor.
data PostalCodesListResponse = PostalCodesListResponse
    { _pclrKind        :: !Text
    , _pclrPostalCodes :: !(Maybe [Maybe PostalCode])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclrKind'
--
-- * 'pclrPostalCodes'
postalCodesListResponse
    :: PostalCodesListResponse
postalCodesListResponse =
    PostalCodesListResponse
    { _pclrKind = "dfareporting#postalCodesListResponse"
    , _pclrPostalCodes = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#postalCodesListResponse\".
pclrKind :: Lens' PostalCodesListResponse Text
pclrKind = lens _pclrKind (\ s a -> s{_pclrKind = a})

-- | Postal code collection.
pclrPostalCodes :: Lens' PostalCodesListResponse [Maybe PostalCode]
pclrPostalCodes
  = lens _pclrPostalCodes
      (\ s a -> s{_pclrPostalCodes = a})
      . _Default
      . _Coerce

instance FromJSON PostalCodesListResponse where
        parseJSON
          = withObject "PostalCodesListResponse"
              (\ o ->
                 PostalCodesListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#postalCodesListResponse")
                     <*> (o .:? "postalCodes" .!= mempty))

instance ToJSON PostalCodesListResponse where
        toJSON PostalCodesListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pclrKind),
                  ("postalCodes" .=) <$> _pclrPostalCodes])

-- | Pricing Information
--
-- /See:/ 'pricing' smart constructor.
data Pricing = Pricing
    { _pEndDate     :: !(Maybe UTCTime)
    , _pStartDate   :: !(Maybe UTCTime)
    , _pGroupType   :: !(Maybe PricingGroupType)
    , _pPricingType :: !(Maybe PricingPricingType)
    , _pFlights     :: !(Maybe [Maybe Flight])
    , _pCapCostType :: !(Maybe PricingCapCostType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Pricing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEndDate'
--
-- * 'pStartDate'
--
-- * 'pGroupType'
--
-- * 'pPricingType'
--
-- * 'pFlights'
--
-- * 'pCapCostType'
pricing
    :: Pricing
pricing =
    Pricing
    { _pEndDate = Nothing
    , _pStartDate = Nothing
    , _pGroupType = Nothing
    , _pPricingType = Nothing
    , _pFlights = Nothing
    , _pCapCostType = Nothing
    }

-- | End date of this inventory item.
pEndDate :: Lens' Pricing (Maybe UTCTime)
pEndDate = lens _pEndDate (\ s a -> s{_pEndDate = a})

-- | Start date of this inventory item.
pStartDate :: Lens' Pricing (Maybe UTCTime)
pStartDate
  = lens _pStartDate (\ s a -> s{_pStartDate = a})

-- | Group type of this inventory item if it represents a placement group. Is
-- null otherwise. There are two type of placement groups:
-- PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory
-- items that acts as a single pricing point for a group of tags.
-- PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items
-- that not only acts as a single pricing point, but also assumes that all
-- the tags in it will be served at the same time. A roadblock requires one
-- of its assigned inventory items to be marked as primary.
pGroupType :: Lens' Pricing (Maybe PricingGroupType)
pGroupType
  = lens _pGroupType (\ s a -> s{_pGroupType = a})

-- | Pricing type of this inventory item.
pPricingType :: Lens' Pricing (Maybe PricingPricingType)
pPricingType
  = lens _pPricingType (\ s a -> s{_pPricingType = a})

-- | Flights of this inventory item. A flight (a.k.a. pricing period)
-- represents the inventory item pricing information for a specific period
-- of time.
pFlights :: Lens' Pricing [Maybe Flight]
pFlights
  = lens _pFlights (\ s a -> s{_pFlights = a}) .
      _Default
      . _Coerce

-- | Cap cost type of this inventory item.
pCapCostType :: Lens' Pricing (Maybe PricingCapCostType)
pCapCostType
  = lens _pCapCostType (\ s a -> s{_pCapCostType = a})

instance FromJSON Pricing where
        parseJSON
          = withObject "Pricing"
              (\ o ->
                 Pricing <$>
                   (o .:? "endDate") <*> (o .:? "startDate") <*>
                     (o .:? "groupType")
                     <*> (o .:? "pricingType")
                     <*> (o .:? "flights" .!= mempty)
                     <*> (o .:? "capCostType"))

instance ToJSON Pricing where
        toJSON Pricing{..}
          = object
              (catMaybes
                 [("endDate" .=) <$> _pEndDate,
                  ("startDate" .=) <$> _pStartDate,
                  ("groupType" .=) <$> _pGroupType,
                  ("pricingType" .=) <$> _pPricingType,
                  ("flights" .=) <$> _pFlights,
                  ("capCostType" .=) <$> _pCapCostType])

-- | Pricing Schedule
--
-- /See:/ 'pricingSchedule' smart constructor.
data PricingSchedule = PricingSchedule
    { _psTestingStartDate      :: !(Maybe UTCTime)
    , _psFloodlightActivityId  :: !(Maybe Int64)
    , _psEndDate               :: !(Maybe UTCTime)
    , _psDisregardOverdelivery :: !(Maybe Bool)
    , _psStartDate             :: !(Maybe UTCTime)
    , _psCapCostOption         :: !(Maybe PricingScheduleCapCostOption)
    , _psPricingType           :: !(Maybe PricingSchedulePricingType)
    , _psPricingPeriods        :: !(Maybe [Maybe PricingSchedulePricingPeriod])
    , _psFlighted              :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PricingSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psTestingStartDate'
--
-- * 'psFloodlightActivityId'
--
-- * 'psEndDate'
--
-- * 'psDisregardOverdelivery'
--
-- * 'psStartDate'
--
-- * 'psCapCostOption'
--
-- * 'psPricingType'
--
-- * 'psPricingPeriods'
--
-- * 'psFlighted'
pricingSchedule
    :: PricingSchedule
pricingSchedule =
    PricingSchedule
    { _psTestingStartDate = Nothing
    , _psFloodlightActivityId = Nothing
    , _psEndDate = Nothing
    , _psDisregardOverdelivery = Nothing
    , _psStartDate = Nothing
    , _psCapCostOption = Nothing
    , _psPricingType = Nothing
    , _psPricingPeriods = Nothing
    , _psFlighted = Nothing
    }

-- | Testing start date of this placement. The hours, minutes, and seconds of
-- the start date should not be set, as doing so will result in an error.
psTestingStartDate :: Lens' PricingSchedule (Maybe UTCTime)
psTestingStartDate
  = lens _psTestingStartDate
      (\ s a -> s{_psTestingStartDate = a})

-- | Floodlight activity ID associated with this placement. This field should
-- be set when placement pricing type is set to PRICING_TYPE_CPA.
psFloodlightActivityId :: Lens' PricingSchedule (Maybe Int64)
psFloodlightActivityId
  = lens _psFloodlightActivityId
      (\ s a -> s{_psFloodlightActivityId = a})

-- | Placement end date. This date must be later than, or the same day as,
-- the placement start date, but not later than the campaign end date. If,
-- for example, you set 6\/25\/2015 as both the start and end dates, the
-- effective placement date is just that day only, 6\/25\/2015. The hours,
-- minutes, and seconds of the end date should not be set, as doing so will
-- result in an error. This field is required on insertion.
psEndDate :: Lens' PricingSchedule (Maybe UTCTime)
psEndDate
  = lens _psEndDate (\ s a -> s{_psEndDate = a})

-- | Whether cap costs are ignored by ad serving.
psDisregardOverdelivery :: Lens' PricingSchedule (Maybe Bool)
psDisregardOverdelivery
  = lens _psDisregardOverdelivery
      (\ s a -> s{_psDisregardOverdelivery = a})

-- | Placement start date. This date must be later than, or the same day as,
-- the campaign start date. The hours, minutes, and seconds of the start
-- date should not be set, as doing so will result in an error. This field
-- is required on insertion.
psStartDate :: Lens' PricingSchedule (Maybe UTCTime)
psStartDate
  = lens _psStartDate (\ s a -> s{_psStartDate = a})

-- | Placement cap cost option.
psCapCostOption :: Lens' PricingSchedule (Maybe PricingScheduleCapCostOption)
psCapCostOption
  = lens _psCapCostOption
      (\ s a -> s{_psCapCostOption = a})

-- | Placement pricing type. This field is required on insertion.
psPricingType :: Lens' PricingSchedule (Maybe PricingSchedulePricingType)
psPricingType
  = lens _psPricingType
      (\ s a -> s{_psPricingType = a})

-- | Pricing periods for this placement.
psPricingPeriods :: Lens' PricingSchedule [Maybe PricingSchedulePricingPeriod]
psPricingPeriods
  = lens _psPricingPeriods
      (\ s a -> s{_psPricingPeriods = a})
      . _Default
      . _Coerce

-- | Whether this placement is flighted. If true, pricing periods will be
-- computed automatically.
psFlighted :: Lens' PricingSchedule (Maybe Bool)
psFlighted
  = lens _psFlighted (\ s a -> s{_psFlighted = a})

instance FromJSON PricingSchedule where
        parseJSON
          = withObject "PricingSchedule"
              (\ o ->
                 PricingSchedule <$>
                   (o .:? "testingStartDate") <*>
                     (o .:? "floodlightActivityId")
                     <*> (o .:? "endDate")
                     <*> (o .:? "disregardOverdelivery")
                     <*> (o .:? "startDate")
                     <*> (o .:? "capCostOption")
                     <*> (o .:? "pricingType")
                     <*> (o .:? "pricingPeriods" .!= mempty)
                     <*> (o .:? "flighted"))

instance ToJSON PricingSchedule where
        toJSON PricingSchedule{..}
          = object
              (catMaybes
                 [("testingStartDate" .=) <$> _psTestingStartDate,
                  ("floodlightActivityId" .=) <$>
                    _psFloodlightActivityId,
                  ("endDate" .=) <$> _psEndDate,
                  ("disregardOverdelivery" .=) <$>
                    _psDisregardOverdelivery,
                  ("startDate" .=) <$> _psStartDate,
                  ("capCostOption" .=) <$> _psCapCostOption,
                  ("pricingType" .=) <$> _psPricingType,
                  ("pricingPeriods" .=) <$> _psPricingPeriods,
                  ("flighted" .=) <$> _psFlighted])

-- | Pricing Period
--
-- /See:/ 'pricingSchedulePricingPeriod' smart constructor.
data PricingSchedulePricingPeriod = PricingSchedulePricingPeriod
    { _psppEndDate         :: !(Maybe UTCTime)
    , _psppRateOrCostNanos :: !(Maybe Int64)
    , _psppStartDate       :: !(Maybe UTCTime)
    , _psppUnits           :: !(Maybe Int64)
    , _psppPricingComment  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PricingSchedulePricingPeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psppEndDate'
--
-- * 'psppRateOrCostNanos'
--
-- * 'psppStartDate'
--
-- * 'psppUnits'
--
-- * 'psppPricingComment'
pricingSchedulePricingPeriod
    :: PricingSchedulePricingPeriod
pricingSchedulePricingPeriod =
    PricingSchedulePricingPeriod
    { _psppEndDate = Nothing
    , _psppRateOrCostNanos = Nothing
    , _psppStartDate = Nothing
    , _psppUnits = Nothing
    , _psppPricingComment = Nothing
    }

-- | Pricing period end date. This date must be later than, or the same day
-- as, the pricing period start date, but not later than the placement end
-- date. The period end date can be the same date as the period start date.
-- If, for example, you set 6\/25\/2015 as both the start and end dates,
-- the effective pricing period date is just that day only, 6\/25\/2015.
-- The hours, minutes, and seconds of the end date should not be set, as
-- doing so will result in an error.
psppEndDate :: Lens' PricingSchedulePricingPeriod (Maybe UTCTime)
psppEndDate
  = lens _psppEndDate (\ s a -> s{_psppEndDate = a})

-- | Rate or cost of this pricing period.
psppRateOrCostNanos :: Lens' PricingSchedulePricingPeriod (Maybe Int64)
psppRateOrCostNanos
  = lens _psppRateOrCostNanos
      (\ s a -> s{_psppRateOrCostNanos = a})

-- | Pricing period start date. This date must be later than, or the same day
-- as, the placement start date. The hours, minutes, and seconds of the
-- start date should not be set, as doing so will result in an error.
psppStartDate :: Lens' PricingSchedulePricingPeriod (Maybe UTCTime)
psppStartDate
  = lens _psppStartDate
      (\ s a -> s{_psppStartDate = a})

-- | Units of this pricing period.
psppUnits :: Lens' PricingSchedulePricingPeriod (Maybe Int64)
psppUnits
  = lens _psppUnits (\ s a -> s{_psppUnits = a})

-- | Comments for this pricing period.
psppPricingComment :: Lens' PricingSchedulePricingPeriod (Maybe Text)
psppPricingComment
  = lens _psppPricingComment
      (\ s a -> s{_psppPricingComment = a})

instance FromJSON PricingSchedulePricingPeriod where
        parseJSON
          = withObject "PricingSchedulePricingPeriod"
              (\ o ->
                 PricingSchedulePricingPeriod <$>
                   (o .:? "endDate") <*> (o .:? "rateOrCostNanos") <*>
                     (o .:? "startDate")
                     <*> (o .:? "units")
                     <*> (o .:? "pricingComment"))

instance ToJSON PricingSchedulePricingPeriod where
        toJSON PricingSchedulePricingPeriod{..}
          = object
              (catMaybes
                 [("endDate" .=) <$> _psppEndDate,
                  ("rateOrCostNanos" .=) <$> _psppRateOrCostNanos,
                  ("startDate" .=) <$> _psppStartDate,
                  ("units" .=) <$> _psppUnits,
                  ("pricingComment" .=) <$> _psppPricingComment])

-- | Contains properties of a DoubleClick Planning project.
--
-- /See:/ 'project' smart constructor.
data Project = Project
    { _ppTargetClicks      :: !(Maybe Int64)
    , _ppClientBillingCode :: !(Maybe Text)
    , _ppTargetCpmNanos    :: !(Maybe Int64)
    , _ppTargetConversions :: !(Maybe Int64)
    , _ppBudget            :: !(Maybe Int64)
    , _ppKind              :: !Text
    , _ppAdvertiserId      :: !(Maybe Int64)
    , _ppEndDate           :: !(Maybe UTCTime)
    , _ppOverview          :: !(Maybe Text)
    , _ppTargetImpressions :: !(Maybe Int64)
    , _ppStartDate         :: !(Maybe UTCTime)
    , _ppTargetCpcNanos    :: !(Maybe Int64)
    , _ppAccountId         :: !(Maybe Int64)
    , _ppName              :: !(Maybe Text)
    , _ppLastModifiedInfo  :: !(Maybe (Maybe LastModifiedInfo))
    , _ppId                :: !(Maybe Int64)
    , _ppAudienceAgeGroup  :: !(Maybe ProjectAudienceAgeGroup)
    , _ppSubaccountId      :: !(Maybe Int64)
    , _ppAudienceGender    :: !(Maybe ProjectAudienceGender)
    , _ppClientName        :: !(Maybe Text)
    , _ppTargetCpaNanos    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppTargetClicks'
--
-- * 'ppClientBillingCode'
--
-- * 'ppTargetCpmNanos'
--
-- * 'ppTargetConversions'
--
-- * 'ppBudget'
--
-- * 'ppKind'
--
-- * 'ppAdvertiserId'
--
-- * 'ppEndDate'
--
-- * 'ppOverview'
--
-- * 'ppTargetImpressions'
--
-- * 'ppStartDate'
--
-- * 'ppTargetCpcNanos'
--
-- * 'ppAccountId'
--
-- * 'ppName'
--
-- * 'ppLastModifiedInfo'
--
-- * 'ppId'
--
-- * 'ppAudienceAgeGroup'
--
-- * 'ppSubaccountId'
--
-- * 'ppAudienceGender'
--
-- * 'ppClientName'
--
-- * 'ppTargetCpaNanos'
project
    :: Project
project =
    Project
    { _ppTargetClicks = Nothing
    , _ppClientBillingCode = Nothing
    , _ppTargetCpmNanos = Nothing
    , _ppTargetConversions = Nothing
    , _ppBudget = Nothing
    , _ppKind = "dfareporting#project"
    , _ppAdvertiserId = Nothing
    , _ppEndDate = Nothing
    , _ppOverview = Nothing
    , _ppTargetImpressions = Nothing
    , _ppStartDate = Nothing
    , _ppTargetCpcNanos = Nothing
    , _ppAccountId = Nothing
    , _ppName = Nothing
    , _ppLastModifiedInfo = Nothing
    , _ppId = Nothing
    , _ppAudienceAgeGroup = Nothing
    , _ppSubaccountId = Nothing
    , _ppAudienceGender = Nothing
    , _ppClientName = Nothing
    , _ppTargetCpaNanos = Nothing
    }

-- | Number of clicks that the advertiser is targeting.
ppTargetClicks :: Lens' Project (Maybe Int64)
ppTargetClicks
  = lens _ppTargetClicks
      (\ s a -> s{_ppTargetClicks = a})

-- | Client billing code of this project.
ppClientBillingCode :: Lens' Project (Maybe Text)
ppClientBillingCode
  = lens _ppClientBillingCode
      (\ s a -> s{_ppClientBillingCode = a})

-- | CPM that the advertiser is targeting.
ppTargetCpmNanos :: Lens' Project (Maybe Int64)
ppTargetCpmNanos
  = lens _ppTargetCpmNanos
      (\ s a -> s{_ppTargetCpmNanos = a})

-- | Number of conversions that the advertiser is targeting.
ppTargetConversions :: Lens' Project (Maybe Int64)
ppTargetConversions
  = lens _ppTargetConversions
      (\ s a -> s{_ppTargetConversions = a})

-- | Budget of this project in the currency specified by the current account.
-- The value stored in this field represents only the non-fractional
-- amount. For example, for USD, the smallest value that can be represented
-- by this field is 1 US dollar.
ppBudget :: Lens' Project (Maybe Int64)
ppBudget = lens _ppBudget (\ s a -> s{_ppBudget = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#project\".
ppKind :: Lens' Project Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | Advertiser ID of this project.
ppAdvertiserId :: Lens' Project (Maybe Int64)
ppAdvertiserId
  = lens _ppAdvertiserId
      (\ s a -> s{_ppAdvertiserId = a})

-- | End date of the project.
ppEndDate :: Lens' Project (Maybe UTCTime)
ppEndDate
  = lens _ppEndDate (\ s a -> s{_ppEndDate = a})

-- | Overview of this project.
ppOverview :: Lens' Project (Maybe Text)
ppOverview
  = lens _ppOverview (\ s a -> s{_ppOverview = a})

-- | Number of impressions that the advertiser is targeting.
ppTargetImpressions :: Lens' Project (Maybe Int64)
ppTargetImpressions
  = lens _ppTargetImpressions
      (\ s a -> s{_ppTargetImpressions = a})

-- | Start date of the project.
ppStartDate :: Lens' Project (Maybe UTCTime)
ppStartDate
  = lens _ppStartDate (\ s a -> s{_ppStartDate = a})

-- | CPC that the advertiser is targeting.
ppTargetCpcNanos :: Lens' Project (Maybe Int64)
ppTargetCpcNanos
  = lens _ppTargetCpcNanos
      (\ s a -> s{_ppTargetCpcNanos = a})

-- | Account ID of this project.
ppAccountId :: Lens' Project (Maybe Int64)
ppAccountId
  = lens _ppAccountId (\ s a -> s{_ppAccountId = a})

-- | Name of this project.
ppName :: Lens' Project (Maybe Text)
ppName = lens _ppName (\ s a -> s{_ppName = a})

-- | Information about the most recent modification of this project.
ppLastModifiedInfo :: Lens' Project (Maybe (Maybe LastModifiedInfo))
ppLastModifiedInfo
  = lens _ppLastModifiedInfo
      (\ s a -> s{_ppLastModifiedInfo = a})

-- | ID of this project. This is a read-only, auto-generated field.
ppId :: Lens' Project (Maybe Int64)
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | Audience age group of this project.
ppAudienceAgeGroup :: Lens' Project (Maybe ProjectAudienceAgeGroup)
ppAudienceAgeGroup
  = lens _ppAudienceAgeGroup
      (\ s a -> s{_ppAudienceAgeGroup = a})

-- | Subaccount ID of this project.
ppSubaccountId :: Lens' Project (Maybe Int64)
ppSubaccountId
  = lens _ppSubaccountId
      (\ s a -> s{_ppSubaccountId = a})

-- | Audience gender of this project.
ppAudienceGender :: Lens' Project (Maybe ProjectAudienceGender)
ppAudienceGender
  = lens _ppAudienceGender
      (\ s a -> s{_ppAudienceGender = a})

-- | Name of the project client.
ppClientName :: Lens' Project (Maybe Text)
ppClientName
  = lens _ppClientName (\ s a -> s{_ppClientName = a})

-- | CPA that the advertiser is targeting.
ppTargetCpaNanos :: Lens' Project (Maybe Int64)
ppTargetCpaNanos
  = lens _ppTargetCpaNanos
      (\ s a -> s{_ppTargetCpaNanos = a})

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project <$>
                   (o .:? "targetClicks") <*>
                     (o .:? "clientBillingCode")
                     <*> (o .:? "targetCpmNanos")
                     <*> (o .:? "targetConversions")
                     <*> (o .:? "budget")
                     <*> (o .:? "kind" .!= "dfareporting#project")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "endDate")
                     <*> (o .:? "overview")
                     <*> (o .:? "targetImpressions")
                     <*> (o .:? "startDate")
                     <*> (o .:? "targetCpcNanos")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "lastModifiedInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "audienceAgeGroup")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "audienceGender")
                     <*> (o .:? "clientName")
                     <*> (o .:? "targetCpaNanos"))

instance ToJSON Project where
        toJSON Project{..}
          = object
              (catMaybes
                 [("targetClicks" .=) <$> _ppTargetClicks,
                  ("clientBillingCode" .=) <$> _ppClientBillingCode,
                  ("targetCpmNanos" .=) <$> _ppTargetCpmNanos,
                  ("targetConversions" .=) <$> _ppTargetConversions,
                  ("budget" .=) <$> _ppBudget,
                  Just ("kind" .= _ppKind),
                  ("advertiserId" .=) <$> _ppAdvertiserId,
                  ("endDate" .=) <$> _ppEndDate,
                  ("overview" .=) <$> _ppOverview,
                  ("targetImpressions" .=) <$> _ppTargetImpressions,
                  ("startDate" .=) <$> _ppStartDate,
                  ("targetCpcNanos" .=) <$> _ppTargetCpcNanos,
                  ("accountId" .=) <$> _ppAccountId,
                  ("name" .=) <$> _ppName,
                  ("lastModifiedInfo" .=) <$> _ppLastModifiedInfo,
                  ("id" .=) <$> _ppId,
                  ("audienceAgeGroup" .=) <$> _ppAudienceAgeGroup,
                  ("subaccountId" .=) <$> _ppSubaccountId,
                  ("audienceGender" .=) <$> _ppAudienceGender,
                  ("clientName" .=) <$> _ppClientName,
                  ("targetCpaNanos" .=) <$> _ppTargetCpaNanos])

-- | Project List Response
--
-- /See:/ 'projectsListResponse' smart constructor.
data ProjectsListResponse = ProjectsListResponse
    { _proNextPageToken :: !(Maybe Text)
    , _proKind          :: !Text
    , _proProjects      :: !(Maybe [Maybe Project])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proNextPageToken'
--
-- * 'proKind'
--
-- * 'proProjects'
projectsListResponse
    :: ProjectsListResponse
projectsListResponse =
    ProjectsListResponse
    { _proNextPageToken = Nothing
    , _proKind = "dfareporting#projectsListResponse"
    , _proProjects = Nothing
    }

-- | Pagination token to be used for the next list operation.
proNextPageToken :: Lens' ProjectsListResponse (Maybe Text)
proNextPageToken
  = lens _proNextPageToken
      (\ s a -> s{_proNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#projectsListResponse\".
proKind :: Lens' ProjectsListResponse Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

-- | Project collection.
proProjects :: Lens' ProjectsListResponse [Maybe Project]
proProjects
  = lens _proProjects (\ s a -> s{_proProjects = a}) .
      _Default
      . _Coerce

instance FromJSON ProjectsListResponse where
        parseJSON
          = withObject "ProjectsListResponse"
              (\ o ->
                 ProjectsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#projectsListResponse")
                     <*> (o .:? "projects" .!= mempty))

instance ToJSON ProjectsListResponse where
        toJSON ProjectsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _proNextPageToken,
                  Just ("kind" .= _proKind),
                  ("projects" .=) <$> _proProjects])

-- | Represents fields that are compatible to be selected for a report of
-- type \"REACH\".
--
-- /See:/ 'reachReportCompatibleFields' smart constructor.
data ReachReportCompatibleFields = ReachReportCompatibleFields
    { _rrcfMetrics                 :: !(Maybe [Maybe Metric])
    , _rrcfReachByFrequencyMetrics :: !(Maybe [Maybe Metric])
    , _rrcfKind                    :: !Text
    , _rrcfDimensionFilters        :: !(Maybe [Maybe Dimension])
    , _rrcfPivotedActivityMetrics  :: !(Maybe [Maybe Metric])
    , _rrcfDimensions              :: !(Maybe [Maybe Dimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReachReportCompatibleFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrcfMetrics'
--
-- * 'rrcfReachByFrequencyMetrics'
--
-- * 'rrcfKind'
--
-- * 'rrcfDimensionFilters'
--
-- * 'rrcfPivotedActivityMetrics'
--
-- * 'rrcfDimensions'
reachReportCompatibleFields
    :: ReachReportCompatibleFields
reachReportCompatibleFields =
    ReachReportCompatibleFields
    { _rrcfMetrics = Nothing
    , _rrcfReachByFrequencyMetrics = Nothing
    , _rrcfKind = "dfareporting#reachReportCompatibleFields"
    , _rrcfDimensionFilters = Nothing
    , _rrcfPivotedActivityMetrics = Nothing
    , _rrcfDimensions = Nothing
    }

-- | Metrics which are compatible to be selected in the \"metricNames\"
-- section of the report.
rrcfMetrics :: Lens' ReachReportCompatibleFields [Maybe Metric]
rrcfMetrics
  = lens _rrcfMetrics (\ s a -> s{_rrcfMetrics = a}) .
      _Default
      . _Coerce

-- | Metrics which are compatible to be selected in the
-- \"reachByFrequencyMetricNames\" section of the report.
rrcfReachByFrequencyMetrics :: Lens' ReachReportCompatibleFields [Maybe Metric]
rrcfReachByFrequencyMetrics
  = lens _rrcfReachByFrequencyMetrics
      (\ s a -> s{_rrcfReachByFrequencyMetrics = a})
      . _Default
      . _Coerce

-- | The kind of resource this is, in this case
-- dfareporting#reachReportCompatibleFields.
rrcfKind :: Lens' ReachReportCompatibleFields Text
rrcfKind = lens _rrcfKind (\ s a -> s{_rrcfKind = a})

-- | Dimensions which are compatible to be selected in the
-- \"dimensionFilters\" section of the report.
rrcfDimensionFilters :: Lens' ReachReportCompatibleFields [Maybe Dimension]
rrcfDimensionFilters
  = lens _rrcfDimensionFilters
      (\ s a -> s{_rrcfDimensionFilters = a})
      . _Default
      . _Coerce

-- | Metrics which are compatible to be selected as activity metrics to pivot
-- on in the \"activities\" section of the report.
rrcfPivotedActivityMetrics :: Lens' ReachReportCompatibleFields [Maybe Metric]
rrcfPivotedActivityMetrics
  = lens _rrcfPivotedActivityMetrics
      (\ s a -> s{_rrcfPivotedActivityMetrics = a})
      . _Default
      . _Coerce

-- | Dimensions which are compatible to be selected in the \"dimensions\"
-- section of the report.
rrcfDimensions :: Lens' ReachReportCompatibleFields [Maybe Dimension]
rrcfDimensions
  = lens _rrcfDimensions
      (\ s a -> s{_rrcfDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReachReportCompatibleFields where
        parseJSON
          = withObject "ReachReportCompatibleFields"
              (\ o ->
                 ReachReportCompatibleFields <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "reachByFrequencyMetrics" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#reachReportCompatibleFields")
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "pivotedActivityMetrics" .!= mempty)
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON ReachReportCompatibleFields where
        toJSON ReachReportCompatibleFields{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _rrcfMetrics,
                  ("reachByFrequencyMetrics" .=) <$>
                    _rrcfReachByFrequencyMetrics,
                  Just ("kind" .= _rrcfKind),
                  ("dimensionFilters" .=) <$> _rrcfDimensionFilters,
                  ("pivotedActivityMetrics" .=) <$>
                    _rrcfPivotedActivityMetrics,
                  ("dimensions" .=) <$> _rrcfDimensions])

-- | Represents a recipient.
--
-- /See:/ 'recipient' smart constructor.
data Recipient = Recipient
    { _recEmail        :: !(Maybe Text)
    , _recKind         :: !Text
    , _recDeliveryType :: !(Maybe RecipientDeliveryType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Recipient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'recEmail'
--
-- * 'recKind'
--
-- * 'recDeliveryType'
recipient
    :: Recipient
recipient =
    Recipient
    { _recEmail = Nothing
    , _recKind = "dfareporting#recipient"
    , _recDeliveryType = Nothing
    }

-- | The email address of the recipient.
recEmail :: Lens' Recipient (Maybe Text)
recEmail = lens _recEmail (\ s a -> s{_recEmail = a})

-- | The kind of resource this is, in this case dfareporting#recipient.
recKind :: Lens' Recipient Text
recKind = lens _recKind (\ s a -> s{_recKind = a})

-- | The delivery type for the recipient.
recDeliveryType :: Lens' Recipient (Maybe RecipientDeliveryType)
recDeliveryType
  = lens _recDeliveryType
      (\ s a -> s{_recDeliveryType = a})

instance FromJSON Recipient where
        parseJSON
          = withObject "Recipient"
              (\ o ->
                 Recipient <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!= "dfareporting#recipient")
                     <*> (o .:? "deliveryType"))

instance ToJSON Recipient where
        toJSON Recipient{..}
          = object
              (catMaybes
                 [("email" .=) <$> _recEmail,
                  Just ("kind" .= _recKind),
                  ("deliveryType" .=) <$> _recDeliveryType])

-- | Contains information about a region that can be targeted by ads.
--
-- /See:/ 'region' smart constructor.
data Region = Region
    { _rRegionCode    :: !(Maybe Text)
    , _rKind          :: !Text
    , _rName          :: !(Maybe Text)
    , _rCountryCode   :: !(Maybe Text)
    , _rCountryDartId :: !(Maybe Int64)
    , _rDartId        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Region' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRegionCode'
--
-- * 'rKind'
--
-- * 'rName'
--
-- * 'rCountryCode'
--
-- * 'rCountryDartId'
--
-- * 'rDartId'
region
    :: Region
region =
    Region
    { _rRegionCode = Nothing
    , _rKind = "dfareporting#region"
    , _rName = Nothing
    , _rCountryCode = Nothing
    , _rCountryDartId = Nothing
    , _rDartId = Nothing
    }

-- | Region code.
rRegionCode :: Lens' Region (Maybe Text)
rRegionCode
  = lens _rRegionCode (\ s a -> s{_rRegionCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#region\".
rKind :: Lens' Region Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | Name of this region.
rName :: Lens' Region (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Country code of the country to which this region belongs.
rCountryCode :: Lens' Region (Maybe Text)
rCountryCode
  = lens _rCountryCode (\ s a -> s{_rCountryCode = a})

-- | DART ID of the country to which this region belongs.
rCountryDartId :: Lens' Region (Maybe Int64)
rCountryDartId
  = lens _rCountryDartId
      (\ s a -> s{_rCountryDartId = a})

-- | DART ID of this region.
rDartId :: Lens' Region (Maybe Int64)
rDartId = lens _rDartId (\ s a -> s{_rDartId = a})

instance FromJSON Region where
        parseJSON
          = withObject "Region"
              (\ o ->
                 Region <$>
                   (o .:? "regionCode") <*>
                     (o .:? "kind" .!= "dfareporting#region")
                     <*> (o .:? "name")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "countryDartId")
                     <*> (o .:? "dartId"))

instance ToJSON Region where
        toJSON Region{..}
          = object
              (catMaybes
                 [("regionCode" .=) <$> _rRegionCode,
                  Just ("kind" .= _rKind), ("name" .=) <$> _rName,
                  ("countryCode" .=) <$> _rCountryCode,
                  ("countryDartId" .=) <$> _rCountryDartId,
                  ("dartId" .=) <$> _rDartId])

-- | Region List Response
--
-- /See:/ 'regionsListResponse' smart constructor.
data RegionsListResponse = RegionsListResponse
    { _rlrKind    :: !Text
    , _rlrRegions :: !(Maybe [Maybe Region])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrKind'
--
-- * 'rlrRegions'
regionsListResponse
    :: RegionsListResponse
regionsListResponse =
    RegionsListResponse
    { _rlrKind = "dfareporting#regionsListResponse"
    , _rlrRegions = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#regionsListResponse\".
rlrKind :: Lens' RegionsListResponse Text
rlrKind = lens _rlrKind (\ s a -> s{_rlrKind = a})

-- | Region collection.
rlrRegions :: Lens' RegionsListResponse [Maybe Region]
rlrRegions
  = lens _rlrRegions (\ s a -> s{_rlrRegions = a}) .
      _Default
      . _Coerce

instance FromJSON RegionsListResponse where
        parseJSON
          = withObject "RegionsListResponse"
              (\ o ->
                 RegionsListResponse <$>
                   (o .:? "kind" .!= "dfareporting#regionsListResponse")
                     <*> (o .:? "regions" .!= mempty))

instance ToJSON RegionsListResponse where
        toJSON RegionsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rlrKind),
                  ("regions" .=) <$> _rlrRegions])

-- | Contains properties of a remarketing list. Remarketing enables you to
-- create lists of users who have performed specific actions on a site,
-- then target ads to members of those lists. This resource can be used to
-- manage remarketing lists that are owned by your advertisers. To see all
-- remarketing lists that are visible to your advertisers, including those
-- that are shared to your advertiser or account, use the
-- TargetableRemarketingLists resource.
--
-- /See:/ 'remarketingList' smart constructor.
data RemarketingList = RemarketingList
    { _remListSize                   :: !(Maybe Int64)
    , _remListPopulationRule         :: !(Maybe (Maybe ListPopulationRule))
    , _remLifeSpan                   :: !(Maybe Int64)
    , _remKind                       :: !Text
    , _remAdvertiserId               :: !(Maybe Int64)
    , _remAdvertiserIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _remActive                     :: !(Maybe Bool)
    , _remAccountId                  :: !(Maybe Int64)
    , _remName                       :: !(Maybe Text)
    , _remListSource                 :: !(Maybe RemarketingListListSource)
    , _remId                         :: !(Maybe Int64)
    , _remSubaccountId               :: !(Maybe Int64)
    , _remDescription                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'remListSize'
--
-- * 'remListPopulationRule'
--
-- * 'remLifeSpan'
--
-- * 'remKind'
--
-- * 'remAdvertiserId'
--
-- * 'remAdvertiserIdDimensionValue'
--
-- * 'remActive'
--
-- * 'remAccountId'
--
-- * 'remName'
--
-- * 'remListSource'
--
-- * 'remId'
--
-- * 'remSubaccountId'
--
-- * 'remDescription'
remarketingList
    :: RemarketingList
remarketingList =
    RemarketingList
    { _remListSize = Nothing
    , _remListPopulationRule = Nothing
    , _remLifeSpan = Nothing
    , _remKind = "dfareporting#remarketingList"
    , _remAdvertiserId = Nothing
    , _remAdvertiserIdDimensionValue = Nothing
    , _remActive = Nothing
    , _remAccountId = Nothing
    , _remName = Nothing
    , _remListSource = Nothing
    , _remId = Nothing
    , _remSubaccountId = Nothing
    , _remDescription = Nothing
    }

-- | Number of users currently in the list. This is a read-only field.
remListSize :: Lens' RemarketingList (Maybe Int64)
remListSize
  = lens _remListSize (\ s a -> s{_remListSize = a})

-- | Rule used to populate the remarketing list with users.
remListPopulationRule :: Lens' RemarketingList (Maybe (Maybe ListPopulationRule))
remListPopulationRule
  = lens _remListPopulationRule
      (\ s a -> s{_remListPopulationRule = a})

-- | Number of days that a user should remain in the remarketing list without
-- an impression.
remLifeSpan :: Lens' RemarketingList (Maybe Int64)
remLifeSpan
  = lens _remLifeSpan (\ s a -> s{_remLifeSpan = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#remarketingList\".
remKind :: Lens' RemarketingList Text
remKind = lens _remKind (\ s a -> s{_remKind = a})

-- | Dimension value for the advertiser ID that owns this remarketing list.
-- This is a required field.
remAdvertiserId :: Lens' RemarketingList (Maybe Int64)
remAdvertiserId
  = lens _remAdvertiserId
      (\ s a -> s{_remAdvertiserId = a})

-- | Dimension value for the ID of the advertiser. This is a read-only,
-- auto-generated field.
remAdvertiserIdDimensionValue :: Lens' RemarketingList (Maybe (Maybe DimensionValue))
remAdvertiserIdDimensionValue
  = lens _remAdvertiserIdDimensionValue
      (\ s a -> s{_remAdvertiserIdDimensionValue = a})

-- | Whether this remarketing list is active.
remActive :: Lens' RemarketingList (Maybe Bool)
remActive
  = lens _remActive (\ s a -> s{_remActive = a})

-- | Account ID of this remarketing list. This is a read-only, auto-generated
-- field that is only returned in GET requests.
remAccountId :: Lens' RemarketingList (Maybe Int64)
remAccountId
  = lens _remAccountId (\ s a -> s{_remAccountId = a})

-- | Name of the remarketing list. This is a required field. Must be no
-- greater than 128 characters long.
remName :: Lens' RemarketingList (Maybe Text)
remName = lens _remName (\ s a -> s{_remName = a})

-- | Product from which this remarketing list was originated.
remListSource :: Lens' RemarketingList (Maybe RemarketingListListSource)
remListSource
  = lens _remListSource
      (\ s a -> s{_remListSource = a})

-- | Remarketing list ID. This is a read-only, auto-generated field.
remId :: Lens' RemarketingList (Maybe Int64)
remId = lens _remId (\ s a -> s{_remId = a})

-- | Subaccount ID of this remarketing list. This is a read-only,
-- auto-generated field that is only returned in GET requests.
remSubaccountId :: Lens' RemarketingList (Maybe Int64)
remSubaccountId
  = lens _remSubaccountId
      (\ s a -> s{_remSubaccountId = a})

-- | Remarketing list description.
remDescription :: Lens' RemarketingList (Maybe Text)
remDescription
  = lens _remDescription
      (\ s a -> s{_remDescription = a})

instance FromJSON RemarketingList where
        parseJSON
          = withObject "RemarketingList"
              (\ o ->
                 RemarketingList <$>
                   (o .:? "listSize") <*> (o .:? "listPopulationRule")
                     <*> (o .:? "lifeSpan")
                     <*> (o .:? "kind" .!= "dfareporting#remarketingList")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "active")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "listSource")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "description"))

instance ToJSON RemarketingList where
        toJSON RemarketingList{..}
          = object
              (catMaybes
                 [("listSize" .=) <$> _remListSize,
                  ("listPopulationRule" .=) <$> _remListPopulationRule,
                  ("lifeSpan" .=) <$> _remLifeSpan,
                  Just ("kind" .= _remKind),
                  ("advertiserId" .=) <$> _remAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _remAdvertiserIdDimensionValue,
                  ("active" .=) <$> _remActive,
                  ("accountId" .=) <$> _remAccountId,
                  ("name" .=) <$> _remName,
                  ("listSource" .=) <$> _remListSource,
                  ("id" .=) <$> _remId,
                  ("subaccountId" .=) <$> _remSubaccountId,
                  ("description" .=) <$> _remDescription])

-- | Contains properties of a remarketing list\'s sharing information.
-- Sharing allows other accounts or advertisers to target to your
-- remarketing lists. This resource can be used to manage remarketing list
-- sharing to other accounts and advertisers.
--
-- /See:/ 'remarketingListShare' smart constructor.
data RemarketingListShare = RemarketingListShare
    { _rlsSharedAdvertiserIds :: !(Maybe [Int64])
    , _rlsKind                :: !Text
    , _rlsRemarketingListId   :: !(Maybe Int64)
    , _rlsSharedAccountIds    :: !(Maybe [Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsSharedAdvertiserIds'
--
-- * 'rlsKind'
--
-- * 'rlsRemarketingListId'
--
-- * 'rlsSharedAccountIds'
remarketingListShare
    :: RemarketingListShare
remarketingListShare =
    RemarketingListShare
    { _rlsSharedAdvertiserIds = Nothing
    , _rlsKind = "dfareporting#remarketingListShare"
    , _rlsRemarketingListId = Nothing
    , _rlsSharedAccountIds = Nothing
    }

-- | Advertisers that the remarketing list is shared with.
rlsSharedAdvertiserIds :: Lens' RemarketingListShare [Int64]
rlsSharedAdvertiserIds
  = lens _rlsSharedAdvertiserIds
      (\ s a -> s{_rlsSharedAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#remarketingListShare\".
rlsKind :: Lens' RemarketingListShare Text
rlsKind = lens _rlsKind (\ s a -> s{_rlsKind = a})

-- | Remarketing list ID. This is a read-only, auto-generated field.
rlsRemarketingListId :: Lens' RemarketingListShare (Maybe Int64)
rlsRemarketingListId
  = lens _rlsRemarketingListId
      (\ s a -> s{_rlsRemarketingListId = a})

-- | Accounts that the remarketing list is shared with.
rlsSharedAccountIds :: Lens' RemarketingListShare [Int64]
rlsSharedAccountIds
  = lens _rlsSharedAccountIds
      (\ s a -> s{_rlsSharedAccountIds = a})
      . _Default
      . _Coerce

instance FromJSON RemarketingListShare where
        parseJSON
          = withObject "RemarketingListShare"
              (\ o ->
                 RemarketingListShare <$>
                   (o .:? "sharedAdvertiserIds" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#remarketingListShare")
                     <*> (o .:? "remarketingListId")
                     <*> (o .:? "sharedAccountIds" .!= mempty))

instance ToJSON RemarketingListShare where
        toJSON RemarketingListShare{..}
          = object
              (catMaybes
                 [("sharedAdvertiserIds" .=) <$>
                    _rlsSharedAdvertiserIds,
                  Just ("kind" .= _rlsKind),
                  ("remarketingListId" .=) <$> _rlsRemarketingListId,
                  ("sharedAccountIds" .=) <$> _rlsSharedAccountIds])

-- | Remarketing list response
--
-- /See:/ 'remarketingListsListResponse' smart constructor.
data RemarketingListsListResponse = RemarketingListsListResponse
    { _rllrNextPageToken    :: !(Maybe Text)
    , _rllrRemarketingLists :: !(Maybe [Maybe RemarketingList])
    , _rllrKind             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllrNextPageToken'
--
-- * 'rllrRemarketingLists'
--
-- * 'rllrKind'
remarketingListsListResponse
    :: RemarketingListsListResponse
remarketingListsListResponse =
    RemarketingListsListResponse
    { _rllrNextPageToken = Nothing
    , _rllrRemarketingLists = Nothing
    , _rllrKind = "dfareporting#remarketingListsListResponse"
    }

-- | Pagination token to be used for the next list operation.
rllrNextPageToken :: Lens' RemarketingListsListResponse (Maybe Text)
rllrNextPageToken
  = lens _rllrNextPageToken
      (\ s a -> s{_rllrNextPageToken = a})

-- | Remarketing list collection.
rllrRemarketingLists :: Lens' RemarketingListsListResponse [Maybe RemarketingList]
rllrRemarketingLists
  = lens _rllrRemarketingLists
      (\ s a -> s{_rllrRemarketingLists = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#remarketingListsListResponse\".
rllrKind :: Lens' RemarketingListsListResponse Text
rllrKind = lens _rllrKind (\ s a -> s{_rllrKind = a})

instance FromJSON RemarketingListsListResponse where
        parseJSON
          = withObject "RemarketingListsListResponse"
              (\ o ->
                 RemarketingListsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "remarketingLists" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "dfareporting#remarketingListsListResponse"))

instance ToJSON RemarketingListsListResponse where
        toJSON RemarketingListsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rllrNextPageToken,
                  ("remarketingLists" .=) <$> _rllrRemarketingLists,
                  Just ("kind" .= _rllrKind)])

-- | Represents a Report resource.
--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _repDelivery                    :: !(Maybe ReportDelivery)
    , _repEtag                        :: !(Maybe Text)
    , _repOwnerProfileId              :: !(Maybe Int64)
    , _repSchedule                    :: !(Maybe ReportSchedule)
    , _repPathToConversionCriteria    :: !(Maybe ReportPathToConversionCriteria)
    , _repKind                        :: !Text
    , _repFormat                      :: !(Maybe ReportFormat)
    , _repReachCriteria               :: !(Maybe ReportReachCriteria)
    , _repLastModifiedTime            :: !(Maybe Word64)
    , _repAccountId                   :: !(Maybe Int64)
    , _repName                        :: !(Maybe Text)
    , _repId                          :: !(Maybe Int64)
    , _repCrossDimensionReachCriteria :: !(Maybe ReportCrossDimensionReachCriteria)
    , _repType                        :: !(Maybe ReportType)
    , _repSubAccountId                :: !(Maybe Int64)
    , _repFloodlightCriteria          :: !(Maybe ReportFloodlightCriteria)
    , _repCriteria                    :: !(Maybe ReportCriteria)
    , _repFileName                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repDelivery'
--
-- * 'repEtag'
--
-- * 'repOwnerProfileId'
--
-- * 'repSchedule'
--
-- * 'repPathToConversionCriteria'
--
-- * 'repKind'
--
-- * 'repFormat'
--
-- * 'repReachCriteria'
--
-- * 'repLastModifiedTime'
--
-- * 'repAccountId'
--
-- * 'repName'
--
-- * 'repId'
--
-- * 'repCrossDimensionReachCriteria'
--
-- * 'repType'
--
-- * 'repSubAccountId'
--
-- * 'repFloodlightCriteria'
--
-- * 'repCriteria'
--
-- * 'repFileName'
report
    :: Report
report =
    Report
    { _repDelivery = Nothing
    , _repEtag = Nothing
    , _repOwnerProfileId = Nothing
    , _repSchedule = Nothing
    , _repPathToConversionCriteria = Nothing
    , _repKind = "dfareporting#report"
    , _repFormat = Nothing
    , _repReachCriteria = Nothing
    , _repLastModifiedTime = Nothing
    , _repAccountId = Nothing
    , _repName = Nothing
    , _repId = Nothing
    , _repCrossDimensionReachCriteria = Nothing
    , _repType = Nothing
    , _repSubAccountId = Nothing
    , _repFloodlightCriteria = Nothing
    , _repCriteria = Nothing
    , _repFileName = Nothing
    }

-- | The report\'s email delivery settings.
repDelivery :: Lens' Report (Maybe ReportDelivery)
repDelivery
  = lens _repDelivery (\ s a -> s{_repDelivery = a})

-- | The eTag of this response for caching purposes.
repEtag :: Lens' Report (Maybe Text)
repEtag = lens _repEtag (\ s a -> s{_repEtag = a})

-- | The user profile id of the owner of this report.
repOwnerProfileId :: Lens' Report (Maybe Int64)
repOwnerProfileId
  = lens _repOwnerProfileId
      (\ s a -> s{_repOwnerProfileId = a})

-- | The report\'s schedule. Can only be set if the report\'s \'dateRange\'
-- is a relative date range and the relative date range is not \"TODAY\".
repSchedule :: Lens' Report (Maybe ReportSchedule)
repSchedule
  = lens _repSchedule (\ s a -> s{_repSchedule = a})

-- | The report criteria for a report of type \"PATH_TO_CONVERSION\".
repPathToConversionCriteria :: Lens' Report (Maybe ReportPathToConversionCriteria)
repPathToConversionCriteria
  = lens _repPathToConversionCriteria
      (\ s a -> s{_repPathToConversionCriteria = a})

-- | The kind of resource this is, in this case dfareporting#report.
repKind :: Lens' Report Text
repKind = lens _repKind (\ s a -> s{_repKind = a})

-- | The output format of the report. If not specified, default format is
-- \"CSV\". Note that the actual format in the completed report file might
-- differ if for instance the report\'s size exceeds the format\'s
-- capabilities. \"CSV\" will then be the fallback format.
repFormat :: Lens' Report (Maybe ReportFormat)
repFormat
  = lens _repFormat (\ s a -> s{_repFormat = a})

-- | The report criteria for a report of type \"REACH\".
repReachCriteria :: Lens' Report (Maybe ReportReachCriteria)
repReachCriteria
  = lens _repReachCriteria
      (\ s a -> s{_repReachCriteria = a})

-- | The timestamp (in milliseconds since epoch) of when this report was last
-- modified.
repLastModifiedTime :: Lens' Report (Maybe Word64)
repLastModifiedTime
  = lens _repLastModifiedTime
      (\ s a -> s{_repLastModifiedTime = a})

-- | The account ID to which this report belongs.
repAccountId :: Lens' Report (Maybe Int64)
repAccountId
  = lens _repAccountId (\ s a -> s{_repAccountId = a})

-- | The name of the report.
repName :: Lens' Report (Maybe Text)
repName = lens _repName (\ s a -> s{_repName = a})

-- | The unique ID identifying this report resource.
repId :: Lens' Report (Maybe Int64)
repId = lens _repId (\ s a -> s{_repId = a})

-- | The report criteria for a report of type \"CROSS_DIMENSION_REACH\".
repCrossDimensionReachCriteria :: Lens' Report (Maybe ReportCrossDimensionReachCriteria)
repCrossDimensionReachCriteria
  = lens _repCrossDimensionReachCriteria
      (\ s a -> s{_repCrossDimensionReachCriteria = a})

-- | The type of the report.
repType :: Lens' Report (Maybe ReportType)
repType = lens _repType (\ s a -> s{_repType = a})

-- | The subaccount ID to which this report belongs if applicable.
repSubAccountId :: Lens' Report (Maybe Int64)
repSubAccountId
  = lens _repSubAccountId
      (\ s a -> s{_repSubAccountId = a})

-- | The report criteria for a report of type \"FLOODLIGHT\".
repFloodlightCriteria :: Lens' Report (Maybe ReportFloodlightCriteria)
repFloodlightCriteria
  = lens _repFloodlightCriteria
      (\ s a -> s{_repFloodlightCriteria = a})

-- | The report criteria for a report of type \"STANDARD\".
repCriteria :: Lens' Report (Maybe ReportCriteria)
repCriteria
  = lens _repCriteria (\ s a -> s{_repCriteria = a})

-- | The filename used when generating report files for this report.
repFileName :: Lens' Report (Maybe Text)
repFileName
  = lens _repFileName (\ s a -> s{_repFileName = a})

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report <$>
                   (o .:? "delivery") <*> (o .:? "etag") <*>
                     (o .:? "ownerProfileId")
                     <*> (o .:? "schedule")
                     <*> (o .:? "pathToConversionCriteria")
                     <*> (o .:? "kind" .!= "dfareporting#report")
                     <*> (o .:? "format")
                     <*> (o .:? "reachCriteria")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "crossDimensionReachCriteria")
                     <*> (o .:? "type")
                     <*> (o .:? "subAccountId")
                     <*> (o .:? "floodlightCriteria")
                     <*> (o .:? "criteria")
                     <*> (o .:? "fileName"))

instance ToJSON Report where
        toJSON Report{..}
          = object
              (catMaybes
                 [("delivery" .=) <$> _repDelivery,
                  ("etag" .=) <$> _repEtag,
                  ("ownerProfileId" .=) <$> _repOwnerProfileId,
                  ("schedule" .=) <$> _repSchedule,
                  ("pathToConversionCriteria" .=) <$>
                    _repPathToConversionCriteria,
                  Just ("kind" .= _repKind),
                  ("format" .=) <$> _repFormat,
                  ("reachCriteria" .=) <$> _repReachCriteria,
                  ("lastModifiedTime" .=) <$> _repLastModifiedTime,
                  ("accountId" .=) <$> _repAccountId,
                  ("name" .=) <$> _repName, ("id" .=) <$> _repId,
                  ("crossDimensionReachCriteria" .=) <$>
                    _repCrossDimensionReachCriteria,
                  ("type" .=) <$> _repType,
                  ("subAccountId" .=) <$> _repSubAccountId,
                  ("floodlightCriteria" .=) <$> _repFloodlightCriteria,
                  ("criteria" .=) <$> _repCriteria,
                  ("fileName" .=) <$> _repFileName])

-- | Represents fields that are compatible to be selected for a report of
-- type \"STANDARD\".
--
-- /See:/ 'reportCompatibleFields' smart constructor.
data ReportCompatibleFields = ReportCompatibleFields
    { _rcfMetrics                :: !(Maybe [Maybe Metric])
    , _rcfKind                   :: !Text
    , _rcfDimensionFilters       :: !(Maybe [Maybe Dimension])
    , _rcfPivotedActivityMetrics :: !(Maybe [Maybe Metric])
    , _rcfDimensions             :: !(Maybe [Maybe Dimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportCompatibleFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfMetrics'
--
-- * 'rcfKind'
--
-- * 'rcfDimensionFilters'
--
-- * 'rcfPivotedActivityMetrics'
--
-- * 'rcfDimensions'
reportCompatibleFields
    :: ReportCompatibleFields
reportCompatibleFields =
    ReportCompatibleFields
    { _rcfMetrics = Nothing
    , _rcfKind = "dfareporting#reportCompatibleFields"
    , _rcfDimensionFilters = Nothing
    , _rcfPivotedActivityMetrics = Nothing
    , _rcfDimensions = Nothing
    }

-- | Metrics which are compatible to be selected in the \"metricNames\"
-- section of the report.
rcfMetrics :: Lens' ReportCompatibleFields [Maybe Metric]
rcfMetrics
  = lens _rcfMetrics (\ s a -> s{_rcfMetrics = a}) .
      _Default
      . _Coerce

-- | The kind of resource this is, in this case
-- dfareporting#reportCompatibleFields.
rcfKind :: Lens' ReportCompatibleFields Text
rcfKind = lens _rcfKind (\ s a -> s{_rcfKind = a})

-- | Dimensions which are compatible to be selected in the
-- \"dimensionFilters\" section of the report.
rcfDimensionFilters :: Lens' ReportCompatibleFields [Maybe Dimension]
rcfDimensionFilters
  = lens _rcfDimensionFilters
      (\ s a -> s{_rcfDimensionFilters = a})
      . _Default
      . _Coerce

-- | Metrics which are compatible to be selected as activity metrics to pivot
-- on in the \"activities\" section of the report.
rcfPivotedActivityMetrics :: Lens' ReportCompatibleFields [Maybe Metric]
rcfPivotedActivityMetrics
  = lens _rcfPivotedActivityMetrics
      (\ s a -> s{_rcfPivotedActivityMetrics = a})
      . _Default
      . _Coerce

-- | Dimensions which are compatible to be selected in the \"dimensions\"
-- section of the report.
rcfDimensions :: Lens' ReportCompatibleFields [Maybe Dimension]
rcfDimensions
  = lens _rcfDimensions
      (\ s a -> s{_rcfDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReportCompatibleFields where
        parseJSON
          = withObject "ReportCompatibleFields"
              (\ o ->
                 ReportCompatibleFields <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#reportCompatibleFields")
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "pivotedActivityMetrics" .!= mempty)
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON ReportCompatibleFields where
        toJSON ReportCompatibleFields{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _rcfMetrics,
                  Just ("kind" .= _rcfKind),
                  ("dimensionFilters" .=) <$> _rcfDimensionFilters,
                  ("pivotedActivityMetrics" .=) <$>
                    _rcfPivotedActivityMetrics,
                  ("dimensions" .=) <$> _rcfDimensions])

-- | The report criteria for a report of type \"STANDARD\".
--
-- /See:/ 'reportCriteria' smart constructor.
data ReportCriteria = ReportCriteria
    { _rcMetricNames           :: !(Maybe [Text])
    , _rcCustomRichMediaEvents :: !(Maybe (Maybe CustomRichMediaEvents))
    , _rcDimensionFilters      :: !(Maybe [Maybe DimensionValue])
    , _rcActivities            :: !(Maybe (Maybe Activities))
    , _rcDateRange             :: !(Maybe (Maybe DateRange))
    , _rcDimensions            :: !(Maybe [Maybe SortedDimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcMetricNames'
--
-- * 'rcCustomRichMediaEvents'
--
-- * 'rcDimensionFilters'
--
-- * 'rcActivities'
--
-- * 'rcDateRange'
--
-- * 'rcDimensions'
reportCriteria
    :: ReportCriteria
reportCriteria =
    ReportCriteria
    { _rcMetricNames = Nothing
    , _rcCustomRichMediaEvents = Nothing
    , _rcDimensionFilters = Nothing
    , _rcActivities = Nothing
    , _rcDateRange = Nothing
    , _rcDimensions = Nothing
    }

-- | The list of names of metrics the report should include.
rcMetricNames :: Lens' ReportCriteria [Text]
rcMetricNames
  = lens _rcMetricNames
      (\ s a -> s{_rcMetricNames = a})
      . _Default
      . _Coerce

-- | Custom Rich Media Events group.
rcCustomRichMediaEvents :: Lens' ReportCriteria (Maybe (Maybe CustomRichMediaEvents))
rcCustomRichMediaEvents
  = lens _rcCustomRichMediaEvents
      (\ s a -> s{_rcCustomRichMediaEvents = a})

-- | The list of filters on which dimensions are filtered. Filters for
-- different dimensions are ANDed, filters for the same dimension are
-- grouped together and ORed.
rcDimensionFilters :: Lens' ReportCriteria [Maybe DimensionValue]
rcDimensionFilters
  = lens _rcDimensionFilters
      (\ s a -> s{_rcDimensionFilters = a})
      . _Default
      . _Coerce

-- | Activity group.
rcActivities :: Lens' ReportCriteria (Maybe (Maybe Activities))
rcActivities
  = lens _rcActivities (\ s a -> s{_rcActivities = a})

-- | The date range for which this report should be run.
rcDateRange :: Lens' ReportCriteria (Maybe (Maybe DateRange))
rcDateRange
  = lens _rcDateRange (\ s a -> s{_rcDateRange = a})

-- | The list of standard dimensions the report should include.
rcDimensions :: Lens' ReportCriteria [Maybe SortedDimension]
rcDimensions
  = lens _rcDimensions (\ s a -> s{_rcDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReportCriteria where
        parseJSON
          = withObject "ReportCriteria"
              (\ o ->
                 ReportCriteria <$>
                   (o .:? "metricNames" .!= mempty) <*>
                     (o .:? "customRichMediaEvents")
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "activities")
                     <*> (o .:? "dateRange")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON ReportCriteria where
        toJSON ReportCriteria{..}
          = object
              (catMaybes
                 [("metricNames" .=) <$> _rcMetricNames,
                  ("customRichMediaEvents" .=) <$>
                    _rcCustomRichMediaEvents,
                  ("dimensionFilters" .=) <$> _rcDimensionFilters,
                  ("activities" .=) <$> _rcActivities,
                  ("dateRange" .=) <$> _rcDateRange,
                  ("dimensions" .=) <$> _rcDimensions])

-- | The report criteria for a report of type \"CROSS_DIMENSION_REACH\".
--
-- /See:/ 'reportCrossDimensionReachCriteria' smart constructor.
data ReportCrossDimensionReachCriteria = ReportCrossDimensionReachCriteria
    { _rcdrcPivoted            :: !(Maybe Bool)
    , _rcdrcBreakdown          :: !(Maybe [Maybe SortedDimension])
    , _rcdrcDimension          :: !(Maybe ReportDimensionCrossDimensionReachCriteria)
    , _rcdrcMetricNames        :: !(Maybe [Text])
    , _rcdrcDimensionFilters   :: !(Maybe [Maybe DimensionValue])
    , _rcdrcDateRange          :: !(Maybe (Maybe DateRange))
    , _rcdrcOverlapMetricNames :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportCrossDimensionReachCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdrcPivoted'
--
-- * 'rcdrcBreakdown'
--
-- * 'rcdrcDimension'
--
-- * 'rcdrcMetricNames'
--
-- * 'rcdrcDimensionFilters'
--
-- * 'rcdrcDateRange'
--
-- * 'rcdrcOverlapMetricNames'
reportCrossDimensionReachCriteria
    :: ReportCrossDimensionReachCriteria
reportCrossDimensionReachCriteria =
    ReportCrossDimensionReachCriteria
    { _rcdrcPivoted = Nothing
    , _rcdrcBreakdown = Nothing
    , _rcdrcDimension = Nothing
    , _rcdrcMetricNames = Nothing
    , _rcdrcDimensionFilters = Nothing
    , _rcdrcDateRange = Nothing
    , _rcdrcOverlapMetricNames = Nothing
    }

-- | Whether the report is pivoted or not. Defaults to true.
rcdrcPivoted :: Lens' ReportCrossDimensionReachCriteria (Maybe Bool)
rcdrcPivoted
  = lens _rcdrcPivoted (\ s a -> s{_rcdrcPivoted = a})

-- | The list of dimensions the report should include.
rcdrcBreakdown :: Lens' ReportCrossDimensionReachCriteria [Maybe SortedDimension]
rcdrcBreakdown
  = lens _rcdrcBreakdown
      (\ s a -> s{_rcdrcBreakdown = a})
      . _Default
      . _Coerce

-- | The dimension option.
rcdrcDimension :: Lens' ReportCrossDimensionReachCriteria (Maybe ReportDimensionCrossDimensionReachCriteria)
rcdrcDimension
  = lens _rcdrcDimension
      (\ s a -> s{_rcdrcDimension = a})

-- | The list of names of metrics the report should include.
rcdrcMetricNames :: Lens' ReportCrossDimensionReachCriteria [Text]
rcdrcMetricNames
  = lens _rcdrcMetricNames
      (\ s a -> s{_rcdrcMetricNames = a})
      . _Default
      . _Coerce

-- | The list of filters on which dimensions are filtered.
rcdrcDimensionFilters :: Lens' ReportCrossDimensionReachCriteria [Maybe DimensionValue]
rcdrcDimensionFilters
  = lens _rcdrcDimensionFilters
      (\ s a -> s{_rcdrcDimensionFilters = a})
      . _Default
      . _Coerce

-- | The date range this report should be run for.
rcdrcDateRange :: Lens' ReportCrossDimensionReachCriteria (Maybe (Maybe DateRange))
rcdrcDateRange
  = lens _rcdrcDateRange
      (\ s a -> s{_rcdrcDateRange = a})

-- | The list of names of overlap metrics the report should include.
rcdrcOverlapMetricNames :: Lens' ReportCrossDimensionReachCriteria [Text]
rcdrcOverlapMetricNames
  = lens _rcdrcOverlapMetricNames
      (\ s a -> s{_rcdrcOverlapMetricNames = a})
      . _Default
      . _Coerce

instance FromJSON ReportCrossDimensionReachCriteria
         where
        parseJSON
          = withObject "ReportCrossDimensionReachCriteria"
              (\ o ->
                 ReportCrossDimensionReachCriteria <$>
                   (o .:? "pivoted") <*> (o .:? "breakdown" .!= mempty)
                     <*> (o .:? "dimension")
                     <*> (o .:? "metricNames" .!= mempty)
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "dateRange")
                     <*> (o .:? "overlapMetricNames" .!= mempty))

instance ToJSON ReportCrossDimensionReachCriteria
         where
        toJSON ReportCrossDimensionReachCriteria{..}
          = object
              (catMaybes
                 [("pivoted" .=) <$> _rcdrcPivoted,
                  ("breakdown" .=) <$> _rcdrcBreakdown,
                  ("dimension" .=) <$> _rcdrcDimension,
                  ("metricNames" .=) <$> _rcdrcMetricNames,
                  ("dimensionFilters" .=) <$> _rcdrcDimensionFilters,
                  ("dateRange" .=) <$> _rcdrcDateRange,
                  ("overlapMetricNames" .=) <$>
                    _rcdrcOverlapMetricNames])

-- | The report\'s email delivery settings.
--
-- /See:/ 'reportDelivery' smart constructor.
data ReportDelivery = ReportDelivery
    { _rdEmailOwner             :: !(Maybe Bool)
    , _rdRecipients             :: !(Maybe [Maybe Recipient])
    , _rdMessage                :: !(Maybe Text)
    , _rdEmailOwnerDeliveryType :: !(Maybe ReportEmailOwnerDeliveryTypeDelivery)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportDelivery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdEmailOwner'
--
-- * 'rdRecipients'
--
-- * 'rdMessage'
--
-- * 'rdEmailOwnerDeliveryType'
reportDelivery
    :: ReportDelivery
reportDelivery =
    ReportDelivery
    { _rdEmailOwner = Nothing
    , _rdRecipients = Nothing
    , _rdMessage = Nothing
    , _rdEmailOwnerDeliveryType = Nothing
    }

-- | Whether the report should be emailed to the report owner.
rdEmailOwner :: Lens' ReportDelivery (Maybe Bool)
rdEmailOwner
  = lens _rdEmailOwner (\ s a -> s{_rdEmailOwner = a})

-- | The list of recipients to which to email the report.
rdRecipients :: Lens' ReportDelivery [Maybe Recipient]
rdRecipients
  = lens _rdRecipients (\ s a -> s{_rdRecipients = a})
      . _Default
      . _Coerce

-- | The message to be sent with each email.
rdMessage :: Lens' ReportDelivery (Maybe Text)
rdMessage
  = lens _rdMessage (\ s a -> s{_rdMessage = a})

-- | The type of delivery for the owner to receive, if enabled.
rdEmailOwnerDeliveryType :: Lens' ReportDelivery (Maybe ReportEmailOwnerDeliveryTypeDelivery)
rdEmailOwnerDeliveryType
  = lens _rdEmailOwnerDeliveryType
      (\ s a -> s{_rdEmailOwnerDeliveryType = a})

instance FromJSON ReportDelivery where
        parseJSON
          = withObject "ReportDelivery"
              (\ o ->
                 ReportDelivery <$>
                   (o .:? "emailOwner") <*>
                     (o .:? "recipients" .!= mempty)
                     <*> (o .:? "message")
                     <*> (o .:? "emailOwnerDeliveryType"))

instance ToJSON ReportDelivery where
        toJSON ReportDelivery{..}
          = object
              (catMaybes
                 [("emailOwner" .=) <$> _rdEmailOwner,
                  ("recipients" .=) <$> _rdRecipients,
                  ("message" .=) <$> _rdMessage,
                  ("emailOwnerDeliveryType" .=) <$>
                    _rdEmailOwnerDeliveryType])

-- | The report criteria for a report of type \"FLOODLIGHT\".
--
-- /See:/ 'reportFloodlightCriteria' smart constructor.
data ReportFloodlightCriteria = ReportFloodlightCriteria
    { _rfcReportProperties      :: !(Maybe ReportReportPropertiesFloodlightCriteria)
    , _rfcMetricNames           :: !(Maybe [Text])
    , _rfcCustomRichMediaEvents :: !(Maybe [Maybe DimensionValue])
    , _rfcDimensionFilters      :: !(Maybe [Maybe DimensionValue])
    , _rfcDateRange             :: !(Maybe (Maybe DateRange))
    , _rfcFloodlightConfigId    :: !(Maybe (Maybe DimensionValue))
    , _rfcDimensions            :: !(Maybe [Maybe SortedDimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportFloodlightCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfcReportProperties'
--
-- * 'rfcMetricNames'
--
-- * 'rfcCustomRichMediaEvents'
--
-- * 'rfcDimensionFilters'
--
-- * 'rfcDateRange'
--
-- * 'rfcFloodlightConfigId'
--
-- * 'rfcDimensions'
reportFloodlightCriteria
    :: ReportFloodlightCriteria
reportFloodlightCriteria =
    ReportFloodlightCriteria
    { _rfcReportProperties = Nothing
    , _rfcMetricNames = Nothing
    , _rfcCustomRichMediaEvents = Nothing
    , _rfcDimensionFilters = Nothing
    , _rfcDateRange = Nothing
    , _rfcFloodlightConfigId = Nothing
    , _rfcDimensions = Nothing
    }

-- | The properties of the report.
rfcReportProperties :: Lens' ReportFloodlightCriteria (Maybe ReportReportPropertiesFloodlightCriteria)
rfcReportProperties
  = lens _rfcReportProperties
      (\ s a -> s{_rfcReportProperties = a})

-- | The list of names of metrics the report should include.
rfcMetricNames :: Lens' ReportFloodlightCriteria [Text]
rfcMetricNames
  = lens _rfcMetricNames
      (\ s a -> s{_rfcMetricNames = a})
      . _Default
      . _Coerce

-- | The list of custom rich media events to include.
rfcCustomRichMediaEvents :: Lens' ReportFloodlightCriteria [Maybe DimensionValue]
rfcCustomRichMediaEvents
  = lens _rfcCustomRichMediaEvents
      (\ s a -> s{_rfcCustomRichMediaEvents = a})
      . _Default
      . _Coerce

-- | The list of filters on which dimensions are filtered. Filters for
-- different dimensions are ANDed, filters for the same dimension are
-- grouped together and ORed.
rfcDimensionFilters :: Lens' ReportFloodlightCriteria [Maybe DimensionValue]
rfcDimensionFilters
  = lens _rfcDimensionFilters
      (\ s a -> s{_rfcDimensionFilters = a})
      . _Default
      . _Coerce

-- | The date range this report should be run for.
rfcDateRange :: Lens' ReportFloodlightCriteria (Maybe (Maybe DateRange))
rfcDateRange
  = lens _rfcDateRange (\ s a -> s{_rfcDateRange = a})

-- | The floodlight ID for which to show data in this report. All advertisers
-- associated with that ID will automatically be added. The dimension of
-- the value needs to be \'dfa:floodlightConfigId\'.
rfcFloodlightConfigId :: Lens' ReportFloodlightCriteria (Maybe (Maybe DimensionValue))
rfcFloodlightConfigId
  = lens _rfcFloodlightConfigId
      (\ s a -> s{_rfcFloodlightConfigId = a})

-- | The list of dimensions the report should include.
rfcDimensions :: Lens' ReportFloodlightCriteria [Maybe SortedDimension]
rfcDimensions
  = lens _rfcDimensions
      (\ s a -> s{_rfcDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReportFloodlightCriteria where
        parseJSON
          = withObject "ReportFloodlightCriteria"
              (\ o ->
                 ReportFloodlightCriteria <$>
                   (o .:? "reportProperties") <*>
                     (o .:? "metricNames" .!= mempty)
                     <*> (o .:? "customRichMediaEvents" .!= mempty)
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "dateRange")
                     <*> (o .:? "floodlightConfigId")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON ReportFloodlightCriteria where
        toJSON ReportFloodlightCriteria{..}
          = object
              (catMaybes
                 [("reportProperties" .=) <$> _rfcReportProperties,
                  ("metricNames" .=) <$> _rfcMetricNames,
                  ("customRichMediaEvents" .=) <$>
                    _rfcCustomRichMediaEvents,
                  ("dimensionFilters" .=) <$> _rfcDimensionFilters,
                  ("dateRange" .=) <$> _rfcDateRange,
                  ("floodlightConfigId" .=) <$> _rfcFloodlightConfigId,
                  ("dimensions" .=) <$> _rfcDimensions])

-- | Represents the list of reports.
--
-- /See:/ 'reportList' smart constructor.
data ReportList = ReportList
    { _rlEtag          :: !(Maybe Text)
    , _rlNextPageToken :: !(Maybe Text)
    , _rlKind          :: !Text
    , _rlItems         :: !(Maybe [Maybe Report])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlEtag'
--
-- * 'rlNextPageToken'
--
-- * 'rlKind'
--
-- * 'rlItems'
reportList
    :: ReportList
reportList =
    ReportList
    { _rlEtag = Nothing
    , _rlNextPageToken = Nothing
    , _rlKind = "dfareporting#reportList"
    , _rlItems = Nothing
    }

-- | The eTag of this response for caching purposes.
rlEtag :: Lens' ReportList (Maybe Text)
rlEtag = lens _rlEtag (\ s a -> s{_rlEtag = a})

-- | Continuation token used to page through reports. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" to the value of
-- this field. The page token is only valid for a limited amount of time
-- and should not be persisted.
rlNextPageToken :: Lens' ReportList (Maybe Text)
rlNextPageToken
  = lens _rlNextPageToken
      (\ s a -> s{_rlNextPageToken = a})

-- | The kind of list this is, in this case dfareporting#reportList.
rlKind :: Lens' ReportList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | The reports returned in this response.
rlItems :: Lens' ReportList [Maybe Report]
rlItems
  = lens _rlItems (\ s a -> s{_rlItems = a}) . _Default
      . _Coerce

instance FromJSON ReportList where
        parseJSON
          = withObject "ReportList"
              (\ o ->
                 ReportList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dfareporting#reportList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON ReportList where
        toJSON ReportList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rlEtag,
                  ("nextPageToken" .=) <$> _rlNextPageToken,
                  Just ("kind" .= _rlKind), ("items" .=) <$> _rlItems])

-- | The report criteria for a report of type \"PATH_TO_CONVERSION\".
--
-- /See:/ 'reportPathToConversionCriteria' smart constructor.
data ReportPathToConversionCriteria = ReportPathToConversionCriteria
    { _rptccReportProperties          :: !(Maybe ReportReportPropertiesPathToConversionCriteria)
    , _rptccMetricNames               :: !(Maybe [Text])
    , _rptccCustomRichMediaEvents     :: !(Maybe [Maybe DimensionValue])
    , _rptccDateRange                 :: !(Maybe (Maybe DateRange))
    , _rptccConversionDimensions      :: !(Maybe [Maybe SortedDimension])
    , _rptccCustomFloodlightVariables :: !(Maybe [Maybe SortedDimension])
    , _rptccFloodlightConfigId        :: !(Maybe (Maybe DimensionValue))
    , _rptccActivityFilters           :: !(Maybe [Maybe DimensionValue])
    , _rptccPerInteractionDimensions  :: !(Maybe [Maybe SortedDimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportPathToConversionCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rptccReportProperties'
--
-- * 'rptccMetricNames'
--
-- * 'rptccCustomRichMediaEvents'
--
-- * 'rptccDateRange'
--
-- * 'rptccConversionDimensions'
--
-- * 'rptccCustomFloodlightVariables'
--
-- * 'rptccFloodlightConfigId'
--
-- * 'rptccActivityFilters'
--
-- * 'rptccPerInteractionDimensions'
reportPathToConversionCriteria
    :: ReportPathToConversionCriteria
reportPathToConversionCriteria =
    ReportPathToConversionCriteria
    { _rptccReportProperties = Nothing
    , _rptccMetricNames = Nothing
    , _rptccCustomRichMediaEvents = Nothing
    , _rptccDateRange = Nothing
    , _rptccConversionDimensions = Nothing
    , _rptccCustomFloodlightVariables = Nothing
    , _rptccFloodlightConfigId = Nothing
    , _rptccActivityFilters = Nothing
    , _rptccPerInteractionDimensions = Nothing
    }

-- | The properties of the report.
rptccReportProperties :: Lens' ReportPathToConversionCriteria (Maybe ReportReportPropertiesPathToConversionCriteria)
rptccReportProperties
  = lens _rptccReportProperties
      (\ s a -> s{_rptccReportProperties = a})

-- | The list of names of metrics the report should include.
rptccMetricNames :: Lens' ReportPathToConversionCriteria [Text]
rptccMetricNames
  = lens _rptccMetricNames
      (\ s a -> s{_rptccMetricNames = a})
      . _Default
      . _Coerce

-- | The list of custom rich media events to include.
rptccCustomRichMediaEvents :: Lens' ReportPathToConversionCriteria [Maybe DimensionValue]
rptccCustomRichMediaEvents
  = lens _rptccCustomRichMediaEvents
      (\ s a -> s{_rptccCustomRichMediaEvents = a})
      . _Default
      . _Coerce

-- | The date range this report should be run for.
rptccDateRange :: Lens' ReportPathToConversionCriteria (Maybe (Maybe DateRange))
rptccDateRange
  = lens _rptccDateRange
      (\ s a -> s{_rptccDateRange = a})

-- | The list of conversion dimensions the report should include.
rptccConversionDimensions :: Lens' ReportPathToConversionCriteria [Maybe SortedDimension]
rptccConversionDimensions
  = lens _rptccConversionDimensions
      (\ s a -> s{_rptccConversionDimensions = a})
      . _Default
      . _Coerce

-- | The list of custom floodlight variables the report should include.
rptccCustomFloodlightVariables :: Lens' ReportPathToConversionCriteria [Maybe SortedDimension]
rptccCustomFloodlightVariables
  = lens _rptccCustomFloodlightVariables
      (\ s a -> s{_rptccCustomFloodlightVariables = a})
      . _Default
      . _Coerce

-- | The floodlight ID for which to show data in this report. All advertisers
-- associated with that ID will automatically be added. The dimension of
-- the value needs to be \'dfa:floodlightConfigId\'.
rptccFloodlightConfigId :: Lens' ReportPathToConversionCriteria (Maybe (Maybe DimensionValue))
rptccFloodlightConfigId
  = lens _rptccFloodlightConfigId
      (\ s a -> s{_rptccFloodlightConfigId = a})

-- | The list of \'dfa:activity\' values to filter on.
rptccActivityFilters :: Lens' ReportPathToConversionCriteria [Maybe DimensionValue]
rptccActivityFilters
  = lens _rptccActivityFilters
      (\ s a -> s{_rptccActivityFilters = a})
      . _Default
      . _Coerce

-- | The list of per interaction dimensions the report should include.
rptccPerInteractionDimensions :: Lens' ReportPathToConversionCriteria [Maybe SortedDimension]
rptccPerInteractionDimensions
  = lens _rptccPerInteractionDimensions
      (\ s a -> s{_rptccPerInteractionDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReportPathToConversionCriteria
         where
        parseJSON
          = withObject "ReportPathToConversionCriteria"
              (\ o ->
                 ReportPathToConversionCriteria <$>
                   (o .:? "reportProperties") <*>
                     (o .:? "metricNames" .!= mempty)
                     <*> (o .:? "customRichMediaEvents" .!= mempty)
                     <*> (o .:? "dateRange")
                     <*> (o .:? "conversionDimensions" .!= mempty)
                     <*> (o .:? "customFloodlightVariables" .!= mempty)
                     <*> (o .:? "floodlightConfigId")
                     <*> (o .:? "activityFilters" .!= mempty)
                     <*> (o .:? "perInteractionDimensions" .!= mempty))

instance ToJSON ReportPathToConversionCriteria where
        toJSON ReportPathToConversionCriteria{..}
          = object
              (catMaybes
                 [("reportProperties" .=) <$> _rptccReportProperties,
                  ("metricNames" .=) <$> _rptccMetricNames,
                  ("customRichMediaEvents" .=) <$>
                    _rptccCustomRichMediaEvents,
                  ("dateRange" .=) <$> _rptccDateRange,
                  ("conversionDimensions" .=) <$>
                    _rptccConversionDimensions,
                  ("customFloodlightVariables" .=) <$>
                    _rptccCustomFloodlightVariables,
                  ("floodlightConfigId" .=) <$>
                    _rptccFloodlightConfigId,
                  ("activityFilters" .=) <$> _rptccActivityFilters,
                  ("perInteractionDimensions" .=) <$>
                    _rptccPerInteractionDimensions])

-- | The report criteria for a report of type \"REACH\".
--
-- /See:/ 'reportReachCriteria' smart constructor.
data ReportReachCriteria = ReportReachCriteria
    { _rrcReachByFrequencyMetricNames    :: !(Maybe [Text])
    , _rrcEnableAllDimensionCombinations :: !(Maybe Bool)
    , _rrcMetricNames                    :: !(Maybe [Text])
    , _rrcCustomRichMediaEvents          :: !(Maybe (Maybe CustomRichMediaEvents))
    , _rrcDimensionFilters               :: !(Maybe [Maybe DimensionValue])
    , _rrcActivities                     :: !(Maybe (Maybe Activities))
    , _rrcDateRange                      :: !(Maybe (Maybe DateRange))
    , _rrcDimensions                     :: !(Maybe [Maybe SortedDimension])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportReachCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrcReachByFrequencyMetricNames'
--
-- * 'rrcEnableAllDimensionCombinations'
--
-- * 'rrcMetricNames'
--
-- * 'rrcCustomRichMediaEvents'
--
-- * 'rrcDimensionFilters'
--
-- * 'rrcActivities'
--
-- * 'rrcDateRange'
--
-- * 'rrcDimensions'
reportReachCriteria
    :: ReportReachCriteria
reportReachCriteria =
    ReportReachCriteria
    { _rrcReachByFrequencyMetricNames = Nothing
    , _rrcEnableAllDimensionCombinations = Nothing
    , _rrcMetricNames = Nothing
    , _rrcCustomRichMediaEvents = Nothing
    , _rrcDimensionFilters = Nothing
    , _rrcActivities = Nothing
    , _rrcDateRange = Nothing
    , _rrcDimensions = Nothing
    }

-- | The list of names of Reach By Frequency metrics the report should
-- include.
rrcReachByFrequencyMetricNames :: Lens' ReportReachCriteria [Text]
rrcReachByFrequencyMetricNames
  = lens _rrcReachByFrequencyMetricNames
      (\ s a -> s{_rrcReachByFrequencyMetricNames = a})
      . _Default
      . _Coerce

-- | Whether to enable all reach dimension combinations in the report.
-- Defaults to false. If enabled, the date range of the report should be
-- within the last three months.
rrcEnableAllDimensionCombinations :: Lens' ReportReachCriteria (Maybe Bool)
rrcEnableAllDimensionCombinations
  = lens _rrcEnableAllDimensionCombinations
      (\ s a -> s{_rrcEnableAllDimensionCombinations = a})

-- | The list of names of metrics the report should include.
rrcMetricNames :: Lens' ReportReachCriteria [Text]
rrcMetricNames
  = lens _rrcMetricNames
      (\ s a -> s{_rrcMetricNames = a})
      . _Default
      . _Coerce

-- | Custom Rich Media Events group.
rrcCustomRichMediaEvents :: Lens' ReportReachCriteria (Maybe (Maybe CustomRichMediaEvents))
rrcCustomRichMediaEvents
  = lens _rrcCustomRichMediaEvents
      (\ s a -> s{_rrcCustomRichMediaEvents = a})

-- | The list of filters on which dimensions are filtered. Filters for
-- different dimensions are ANDed, filters for the same dimension are
-- grouped together and ORed.
rrcDimensionFilters :: Lens' ReportReachCriteria [Maybe DimensionValue]
rrcDimensionFilters
  = lens _rrcDimensionFilters
      (\ s a -> s{_rrcDimensionFilters = a})
      . _Default
      . _Coerce

-- | Activity group.
rrcActivities :: Lens' ReportReachCriteria (Maybe (Maybe Activities))
rrcActivities
  = lens _rrcActivities
      (\ s a -> s{_rrcActivities = a})

-- | The date range this report should be run for.
rrcDateRange :: Lens' ReportReachCriteria (Maybe (Maybe DateRange))
rrcDateRange
  = lens _rrcDateRange (\ s a -> s{_rrcDateRange = a})

-- | The list of dimensions the report should include.
rrcDimensions :: Lens' ReportReachCriteria [Maybe SortedDimension]
rrcDimensions
  = lens _rrcDimensions
      (\ s a -> s{_rrcDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReportReachCriteria where
        parseJSON
          = withObject "ReportReachCriteria"
              (\ o ->
                 ReportReachCriteria <$>
                   (o .:? "reachByFrequencyMetricNames" .!= mempty) <*>
                     (o .:? "enableAllDimensionCombinations")
                     <*> (o .:? "metricNames" .!= mempty)
                     <*> (o .:? "customRichMediaEvents")
                     <*> (o .:? "dimensionFilters" .!= mempty)
                     <*> (o .:? "activities")
                     <*> (o .:? "dateRange")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON ReportReachCriteria where
        toJSON ReportReachCriteria{..}
          = object
              (catMaybes
                 [("reachByFrequencyMetricNames" .=) <$>
                    _rrcReachByFrequencyMetricNames,
                  ("enableAllDimensionCombinations" .=) <$>
                    _rrcEnableAllDimensionCombinations,
                  ("metricNames" .=) <$> _rrcMetricNames,
                  ("customRichMediaEvents" .=) <$>
                    _rrcCustomRichMediaEvents,
                  ("dimensionFilters" .=) <$> _rrcDimensionFilters,
                  ("activities" .=) <$> _rrcActivities,
                  ("dateRange" .=) <$> _rrcDateRange,
                  ("dimensions" .=) <$> _rrcDimensions])

-- | The properties of the report.
--
-- /See:/ 'reportReportPropertiesFloodlightCriteria' smart constructor.
data ReportReportPropertiesFloodlightCriteria = ReportReportPropertiesFloodlightCriteria
    { _rrpfcIncludeUnattributedIPConversions     :: !(Maybe Bool)
    , _rrpfcIncludeUnattributedCookieConversions :: !(Maybe Bool)
    , _rrpfcIncludeAttributedIPConversions       :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportReportPropertiesFloodlightCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrpfcIncludeUnattributedIPConversions'
--
-- * 'rrpfcIncludeUnattributedCookieConversions'
--
-- * 'rrpfcIncludeAttributedIPConversions'
reportReportPropertiesFloodlightCriteria
    :: ReportReportPropertiesFloodlightCriteria
reportReportPropertiesFloodlightCriteria =
    ReportReportPropertiesFloodlightCriteria
    { _rrpfcIncludeUnattributedIPConversions = Nothing
    , _rrpfcIncludeUnattributedCookieConversions = Nothing
    , _rrpfcIncludeAttributedIPConversions = Nothing
    }

-- | Include conversions that have no associated cookies and no exposures.
-- It’s therefore impossible to know how the user was exposed to your ads
-- during the lookback window prior to a conversion.
rrpfcIncludeUnattributedIPConversions :: Lens' ReportReportPropertiesFloodlightCriteria (Maybe Bool)
rrpfcIncludeUnattributedIPConversions
  = lens _rrpfcIncludeUnattributedIPConversions
      (\ s a ->
         s{_rrpfcIncludeUnattributedIPConversions = a})

-- | Include conversions of users with a DoubleClick cookie but without an
-- exposure. That means the user did not click or see an ad from the
-- advertiser within the Floodlight group, or that the interaction happened
-- outside the lookback window.
rrpfcIncludeUnattributedCookieConversions :: Lens' ReportReportPropertiesFloodlightCriteria (Maybe Bool)
rrpfcIncludeUnattributedCookieConversions
  = lens _rrpfcIncludeUnattributedCookieConversions
      (\ s a ->
         s{_rrpfcIncludeUnattributedCookieConversions = a})

-- | Include conversions that have no cookie, but do have an exposure path.
rrpfcIncludeAttributedIPConversions :: Lens' ReportReportPropertiesFloodlightCriteria (Maybe Bool)
rrpfcIncludeAttributedIPConversions
  = lens _rrpfcIncludeAttributedIPConversions
      (\ s a ->
         s{_rrpfcIncludeAttributedIPConversions = a})

instance FromJSON
         ReportReportPropertiesFloodlightCriteria where
        parseJSON
          = withObject
              "ReportReportPropertiesFloodlightCriteria"
              (\ o ->
                 ReportReportPropertiesFloodlightCriteria <$>
                   (o .:? "includeUnattributedIPConversions") <*>
                     (o .:? "includeUnattributedCookieConversions")
                     <*> (o .:? "includeAttributedIPConversions"))

instance ToJSON
         ReportReportPropertiesFloodlightCriteria where
        toJSON ReportReportPropertiesFloodlightCriteria{..}
          = object
              (catMaybes
                 [("includeUnattributedIPConversions" .=) <$>
                    _rrpfcIncludeUnattributedIPConversions,
                  ("includeUnattributedCookieConversions" .=) <$>
                    _rrpfcIncludeUnattributedCookieConversions,
                  ("includeAttributedIPConversions" .=) <$>
                    _rrpfcIncludeAttributedIPConversions])

-- | The properties of the report.
--
-- /See:/ 'reportReportPropertiesPathToConversionCriteria' smart constructor.
data ReportReportPropertiesPathToConversionCriteria = ReportReportPropertiesPathToConversionCriteria
    { _rrpptccMaximumInteractionGap                :: !(Maybe Int32)
    , _rrpptccMaximumClickInteractions             :: !(Maybe Int32)
    , _rrpptccPivotOnInteractionPath               :: !(Maybe Bool)
    , _rrpptccMaximumImpressionInteractions        :: !(Maybe Int32)
    , _rrpptccIncludeUnattributedIPConversions     :: !(Maybe Bool)
    , _rrpptccImpressionsLookbackWindow            :: !(Maybe Int32)
    , _rrpptccClicksLookbackWindow                 :: !(Maybe Int32)
    , _rrpptccIncludeUnattributedCookieConversions :: !(Maybe Bool)
    , _rrpptccIncludeAttributedIPConversions       :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportReportPropertiesPathToConversionCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrpptccMaximumInteractionGap'
--
-- * 'rrpptccMaximumClickInteractions'
--
-- * 'rrpptccPivotOnInteractionPath'
--
-- * 'rrpptccMaximumImpressionInteractions'
--
-- * 'rrpptccIncludeUnattributedIPConversions'
--
-- * 'rrpptccImpressionsLookbackWindow'
--
-- * 'rrpptccClicksLookbackWindow'
--
-- * 'rrpptccIncludeUnattributedCookieConversions'
--
-- * 'rrpptccIncludeAttributedIPConversions'
reportReportPropertiesPathToConversionCriteria
    :: ReportReportPropertiesPathToConversionCriteria
reportReportPropertiesPathToConversionCriteria =
    ReportReportPropertiesPathToConversionCriteria
    { _rrpptccMaximumInteractionGap = Nothing
    , _rrpptccMaximumClickInteractions = Nothing
    , _rrpptccPivotOnInteractionPath = Nothing
    , _rrpptccMaximumImpressionInteractions = Nothing
    , _rrpptccIncludeUnattributedIPConversions = Nothing
    , _rrpptccImpressionsLookbackWindow = Nothing
    , _rrpptccClicksLookbackWindow = Nothing
    , _rrpptccIncludeUnattributedCookieConversions = Nothing
    , _rrpptccIncludeAttributedIPConversions = Nothing
    }

-- | The maximum amount of time that can take place between interactions
-- (clicks or impressions) by the same user. Valid values: 1-90.
rrpptccMaximumInteractionGap :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Int32)
rrpptccMaximumInteractionGap
  = lens _rrpptccMaximumInteractionGap
      (\ s a -> s{_rrpptccMaximumInteractionGap = a})

-- | The maximum number of click interactions to include in the report.
-- Advertisers currently paying for E2C reports get up to 200 (100 clicks,
-- 100 impressions). If another advertiser in your network is paying for
-- E2C, you can have up to 5 total exposures per report.
rrpptccMaximumClickInteractions :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Int32)
rrpptccMaximumClickInteractions
  = lens _rrpptccMaximumClickInteractions
      (\ s a -> s{_rrpptccMaximumClickInteractions = a})

-- | Enable pivoting on interaction path.
rrpptccPivotOnInteractionPath :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Bool)
rrpptccPivotOnInteractionPath
  = lens _rrpptccPivotOnInteractionPath
      (\ s a -> s{_rrpptccPivotOnInteractionPath = a})

-- | The maximum number of click interactions to include in the report.
-- Advertisers currently paying for E2C reports get up to 200 (100 clicks,
-- 100 impressions). If another advertiser in your network is paying for
-- E2C, you can have up to 5 total exposures per report.
rrpptccMaximumImpressionInteractions :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Int32)
rrpptccMaximumImpressionInteractions
  = lens _rrpptccMaximumImpressionInteractions
      (\ s a ->
         s{_rrpptccMaximumImpressionInteractions = a})

-- | Include conversions that have no associated cookies and no exposures.
-- It’s therefore impossible to know how the user was exposed to your ads
-- during the lookback window prior to a conversion.
rrpptccIncludeUnattributedIPConversions :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Bool)
rrpptccIncludeUnattributedIPConversions
  = lens _rrpptccIncludeUnattributedIPConversions
      (\ s a ->
         s{_rrpptccIncludeUnattributedIPConversions = a})

-- | DFA checks to see if an impression interaction occurred within the
-- specified period of time before a conversion. By default the value is
-- pulled from Floodlight or you can manually enter a custom value. Valid
-- values: 1-90.
rrpptccImpressionsLookbackWindow :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Int32)
rrpptccImpressionsLookbackWindow
  = lens _rrpptccImpressionsLookbackWindow
      (\ s a -> s{_rrpptccImpressionsLookbackWindow = a})

-- | DFA checks to see if a click interaction occurred within the specified
-- period of time before a conversion. By default the value is pulled from
-- Floodlight or you can manually enter a custom value. Valid values: 1-90.
rrpptccClicksLookbackWindow :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Int32)
rrpptccClicksLookbackWindow
  = lens _rrpptccClicksLookbackWindow
      (\ s a -> s{_rrpptccClicksLookbackWindow = a})

-- | Include conversions of users with a DoubleClick cookie but without an
-- exposure. That means the user did not click or see an ad from the
-- advertiser within the Floodlight group, or that the interaction happened
-- outside the lookback window.
rrpptccIncludeUnattributedCookieConversions :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Bool)
rrpptccIncludeUnattributedCookieConversions
  = lens _rrpptccIncludeUnattributedCookieConversions
      (\ s a ->
         s{_rrpptccIncludeUnattributedCookieConversions = a})

-- | Deprecated: has no effect.
rrpptccIncludeAttributedIPConversions :: Lens' ReportReportPropertiesPathToConversionCriteria (Maybe Bool)
rrpptccIncludeAttributedIPConversions
  = lens _rrpptccIncludeAttributedIPConversions
      (\ s a ->
         s{_rrpptccIncludeAttributedIPConversions = a})

instance FromJSON
         ReportReportPropertiesPathToConversionCriteria where
        parseJSON
          = withObject
              "ReportReportPropertiesPathToConversionCriteria"
              (\ o ->
                 ReportReportPropertiesPathToConversionCriteria <$>
                   (o .:? "maximumInteractionGap") <*>
                     (o .:? "maximumClickInteractions")
                     <*> (o .:? "pivotOnInteractionPath")
                     <*> (o .:? "maximumImpressionInteractions")
                     <*> (o .:? "includeUnattributedIPConversions")
                     <*> (o .:? "impressionsLookbackWindow")
                     <*> (o .:? "clicksLookbackWindow")
                     <*> (o .:? "includeUnattributedCookieConversions")
                     <*> (o .:? "includeAttributedIPConversions"))

instance ToJSON
         ReportReportPropertiesPathToConversionCriteria where
        toJSON
          ReportReportPropertiesPathToConversionCriteria{..}
          = object
              (catMaybes
                 [("maximumInteractionGap" .=) <$>
                    _rrpptccMaximumInteractionGap,
                  ("maximumClickInteractions" .=) <$>
                    _rrpptccMaximumClickInteractions,
                  ("pivotOnInteractionPath" .=) <$>
                    _rrpptccPivotOnInteractionPath,
                  ("maximumImpressionInteractions" .=) <$>
                    _rrpptccMaximumImpressionInteractions,
                  ("includeUnattributedIPConversions" .=) <$>
                    _rrpptccIncludeUnattributedIPConversions,
                  ("impressionsLookbackWindow" .=) <$>
                    _rrpptccImpressionsLookbackWindow,
                  ("clicksLookbackWindow" .=) <$>
                    _rrpptccClicksLookbackWindow,
                  ("includeUnattributedCookieConversions" .=) <$>
                    _rrpptccIncludeUnattributedCookieConversions,
                  ("includeAttributedIPConversions" .=) <$>
                    _rrpptccIncludeAttributedIPConversions])

-- | The report\'s schedule. Can only be set if the report\'s \'dateRange\'
-- is a relative date range and the relative date range is not \"TODAY\".
--
-- /See:/ 'reportSchedule' smart constructor.
data ReportSchedule = ReportSchedule
    { _rsEvery             :: !(Maybe Int32)
    , _rsActive            :: !(Maybe Bool)
    , _rsRepeats           :: !(Maybe Text)
    , _rsStartDate         :: !(Maybe UTCTime)
    , _rsExpirationDate    :: !(Maybe UTCTime)
    , _rsRunsOnDayOfMonth  :: !(Maybe ReportRunsOnDayOfMonthSchedule)
    , _rsRepeatsOnWeekDays :: !(Maybe [ReportItemRepeatsOnWeekDaysSchedule])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsEvery'
--
-- * 'rsActive'
--
-- * 'rsRepeats'
--
-- * 'rsStartDate'
--
-- * 'rsExpirationDate'
--
-- * 'rsRunsOnDayOfMonth'
--
-- * 'rsRepeatsOnWeekDays'
reportSchedule
    :: ReportSchedule
reportSchedule =
    ReportSchedule
    { _rsEvery = Nothing
    , _rsActive = Nothing
    , _rsRepeats = Nothing
    , _rsStartDate = Nothing
    , _rsExpirationDate = Nothing
    , _rsRunsOnDayOfMonth = Nothing
    , _rsRepeatsOnWeekDays = Nothing
    }

-- | Defines every how many days, weeks or months the report should be run.
-- Needs to be set when \"repeats\" is either \"DAILY\", \"WEEKLY\" or
-- \"MONTHLY\".
rsEvery :: Lens' ReportSchedule (Maybe Int32)
rsEvery = lens _rsEvery (\ s a -> s{_rsEvery = a})

-- | Whether the schedule is active or not. Must be set to either true or
-- false.
rsActive :: Lens' ReportSchedule (Maybe Bool)
rsActive = lens _rsActive (\ s a -> s{_rsActive = a})

-- | The interval for which the report is repeated. Note: - \"DAILY\" also
-- requires field \"every\" to be set. - \"WEEKLY\" also requires fields
-- \"every\" and \"repeatsOnWeekDays\" to be set. - \"MONTHLY\" also
-- requires fields \"every\" and \"runsOnDayOfMonth\" to be set.
rsRepeats :: Lens' ReportSchedule (Maybe Text)
rsRepeats
  = lens _rsRepeats (\ s a -> s{_rsRepeats = a})

-- | Start date of date range for which scheduled reports should be run.
rsStartDate :: Lens' ReportSchedule (Maybe UTCTime)
rsStartDate
  = lens _rsStartDate (\ s a -> s{_rsStartDate = a})

-- | The expiration date when the scheduled report stops running.
rsExpirationDate :: Lens' ReportSchedule (Maybe UTCTime)
rsExpirationDate
  = lens _rsExpirationDate
      (\ s a -> s{_rsExpirationDate = a})

-- | Enum to define for \"MONTHLY\" scheduled reports whether reports should
-- be repeated on the same day of the month as \"startDate\" or the same
-- day of the week of the month. Example: If \'startDate\' is Monday, April
-- 2nd 2012 (2012-04-02), \"DAY_OF_MONTH\" would run subsequent reports on
-- the 2nd of every Month, and \"WEEK_OF_MONTH\" would run subsequent
-- reports on the first Monday of the month.
rsRunsOnDayOfMonth :: Lens' ReportSchedule (Maybe ReportRunsOnDayOfMonthSchedule)
rsRunsOnDayOfMonth
  = lens _rsRunsOnDayOfMonth
      (\ s a -> s{_rsRunsOnDayOfMonth = a})

-- | List of week days \"WEEKLY\" on which scheduled reports should run.
rsRepeatsOnWeekDays :: Lens' ReportSchedule [ReportItemRepeatsOnWeekDaysSchedule]
rsRepeatsOnWeekDays
  = lens _rsRepeatsOnWeekDays
      (\ s a -> s{_rsRepeatsOnWeekDays = a})
      . _Default
      . _Coerce

instance FromJSON ReportSchedule where
        parseJSON
          = withObject "ReportSchedule"
              (\ o ->
                 ReportSchedule <$>
                   (o .:? "every") <*> (o .:? "active") <*>
                     (o .:? "repeats")
                     <*> (o .:? "startDate")
                     <*> (o .:? "expirationDate")
                     <*> (o .:? "runsOnDayOfMonth")
                     <*> (o .:? "repeatsOnWeekDays" .!= mempty))

instance ToJSON ReportSchedule where
        toJSON ReportSchedule{..}
          = object
              (catMaybes
                 [("every" .=) <$> _rsEvery,
                  ("active" .=) <$> _rsActive,
                  ("repeats" .=) <$> _rsRepeats,
                  ("startDate" .=) <$> _rsStartDate,
                  ("expirationDate" .=) <$> _rsExpirationDate,
                  ("runsOnDayOfMonth" .=) <$> _rsRunsOnDayOfMonth,
                  ("repeatsOnWeekDays" .=) <$> _rsRepeatsOnWeekDays])

-- | Reporting Configuration
--
-- /See:/ 'reportsConfiguration' smart constructor.
data ReportsConfiguration = ReportsConfiguration
    { _rcExposureToConversionEnabled :: !(Maybe Bool)
    , _rcReportGenerationTimeZoneId  :: !(Maybe Int64)
    , _rcLookbackConfiguration       :: !(Maybe (Maybe LookbackConfiguration))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcExposureToConversionEnabled'
--
-- * 'rcReportGenerationTimeZoneId'
--
-- * 'rcLookbackConfiguration'
reportsConfiguration
    :: ReportsConfiguration
reportsConfiguration =
    ReportsConfiguration
    { _rcExposureToConversionEnabled = Nothing
    , _rcReportGenerationTimeZoneId = Nothing
    , _rcLookbackConfiguration = Nothing
    }

-- | Whether the exposure to conversion report is enabled. This report shows
-- detailed pathway information on up to 10 of the most recent ad exposures
-- seen by a user before converting.
rcExposureToConversionEnabled :: Lens' ReportsConfiguration (Maybe Bool)
rcExposureToConversionEnabled
  = lens _rcExposureToConversionEnabled
      (\ s a -> s{_rcExposureToConversionEnabled = a})

-- | Report generation time zone ID of this account. This is a required field
-- that can only be changed by a superuser. Acceptable values are: - \"1\"
-- for \"America\/New_York\" - \"2\" for \"Europe\/London\" - \"3\" for
-- \"Europe\/Paris\" - \"4\" for \"Africa\/Johannesburg\" - \"5\" for
-- \"Asia\/Jerusalem\" - \"6\" for \"Asia\/Shanghai\" - \"7\" for
-- \"Asia\/Hong_Kong\" - \"8\" for \"Asia\/Tokyo\" - \"9\" for
-- \"Australia\/Sydney\" - \"10\" for \"Asia\/Dubai\" - \"11\" for
-- \"America\/Los_Angeles\" - \"12\" for \"Pacific\/Auckland\" - \"13\" for
-- \"America\/Sao_Paulo\"
rcReportGenerationTimeZoneId :: Lens' ReportsConfiguration (Maybe Int64)
rcReportGenerationTimeZoneId
  = lens _rcReportGenerationTimeZoneId
      (\ s a -> s{_rcReportGenerationTimeZoneId = a})

-- | Default lookback windows for new advertisers in this account.
rcLookbackConfiguration :: Lens' ReportsConfiguration (Maybe (Maybe LookbackConfiguration))
rcLookbackConfiguration
  = lens _rcLookbackConfiguration
      (\ s a -> s{_rcLookbackConfiguration = a})

instance FromJSON ReportsConfiguration where
        parseJSON
          = withObject "ReportsConfiguration"
              (\ o ->
                 ReportsConfiguration <$>
                   (o .:? "exposureToConversionEnabled") <*>
                     (o .:? "reportGenerationTimeZoneId")
                     <*> (o .:? "lookbackConfiguration"))

instance ToJSON ReportsConfiguration where
        toJSON ReportsConfiguration{..}
          = object
              (catMaybes
                 [("exposureToConversionEnabled" .=) <$>
                    _rcExposureToConversionEnabled,
                  ("reportGenerationTimeZoneId" .=) <$>
                    _rcReportGenerationTimeZoneId,
                  ("lookbackConfiguration" .=) <$>
                    _rcLookbackConfiguration])

-- | Rich Media Exit Override.
--
-- /See:/ 'richMediaExitOverride' smart constructor.
data RichMediaExitOverride = RichMediaExitOverride
    { _rmeoUseCustomExitUrl :: !(Maybe Bool)
    , _rmeoExitId           :: !(Maybe Int64)
    , _rmeoCustomExitUrl    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RichMediaExitOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmeoUseCustomExitUrl'
--
-- * 'rmeoExitId'
--
-- * 'rmeoCustomExitUrl'
richMediaExitOverride
    :: RichMediaExitOverride
richMediaExitOverride =
    RichMediaExitOverride
    { _rmeoUseCustomExitUrl = Nothing
    , _rmeoExitId = Nothing
    , _rmeoCustomExitUrl = Nothing
    }

-- | Whether to use the custom exit URL.
rmeoUseCustomExitUrl :: Lens' RichMediaExitOverride (Maybe Bool)
rmeoUseCustomExitUrl
  = lens _rmeoUseCustomExitUrl
      (\ s a -> s{_rmeoUseCustomExitUrl = a})

-- | ID for the override to refer to a specific exit in the creative.
rmeoExitId :: Lens' RichMediaExitOverride (Maybe Int64)
rmeoExitId
  = lens _rmeoExitId (\ s a -> s{_rmeoExitId = a})

-- | Click-through URL to override the default exit URL. Applicable if the
-- useCustomExitUrl field is set to true.
rmeoCustomExitUrl :: Lens' RichMediaExitOverride (Maybe Text)
rmeoCustomExitUrl
  = lens _rmeoCustomExitUrl
      (\ s a -> s{_rmeoCustomExitUrl = a})

instance FromJSON RichMediaExitOverride where
        parseJSON
          = withObject "RichMediaExitOverride"
              (\ o ->
                 RichMediaExitOverride <$>
                   (o .:? "useCustomExitUrl") <*> (o .:? "exitId") <*>
                     (o .:? "customExitUrl"))

instance ToJSON RichMediaExitOverride where
        toJSON RichMediaExitOverride{..}
          = object
              (catMaybes
                 [("useCustomExitUrl" .=) <$> _rmeoUseCustomExitUrl,
                  ("exitId" .=) <$> _rmeoExitId,
                  ("customExitUrl" .=) <$> _rmeoCustomExitUrl])

-- | Contains properties of a site.
--
-- /See:/ 'site' smart constructor.
data Site = Site
    { _sKind                          :: !Text
    , _sKeyName                       :: !(Maybe Text)
    , _sSiteContacts                  :: !(Maybe [Maybe SiteContact])
    , _sSiteSettings                  :: !(Maybe (Maybe SiteSettings))
    , _sIdDimensionValue              :: !(Maybe (Maybe DimensionValue))
    , _sDirectorySiteIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _sAccountId                     :: !(Maybe Int64)
    , _sName                          :: !(Maybe Text)
    , _sDirectorySiteId               :: !(Maybe Int64)
    , _sId                            :: !(Maybe Int64)
    , _sSubaccountId                  :: !(Maybe Int64)
    , _sApproved                      :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Site' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sKeyName'
--
-- * 'sSiteContacts'
--
-- * 'sSiteSettings'
--
-- * 'sIdDimensionValue'
--
-- * 'sDirectorySiteIdDimensionValue'
--
-- * 'sAccountId'
--
-- * 'sName'
--
-- * 'sDirectorySiteId'
--
-- * 'sId'
--
-- * 'sSubaccountId'
--
-- * 'sApproved'
site
    :: Site
site =
    Site
    { _sKind = "dfareporting#site"
    , _sKeyName = Nothing
    , _sSiteContacts = Nothing
    , _sSiteSettings = Nothing
    , _sIdDimensionValue = Nothing
    , _sDirectorySiteIdDimensionValue = Nothing
    , _sAccountId = Nothing
    , _sName = Nothing
    , _sDirectorySiteId = Nothing
    , _sId = Nothing
    , _sSubaccountId = Nothing
    , _sApproved = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#site\".
sKind :: Lens' Site Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | Key name of this site. This is a read-only, auto-generated field.
sKeyName :: Lens' Site (Maybe Text)
sKeyName = lens _sKeyName (\ s a -> s{_sKeyName = a})

-- | Site contacts.
sSiteContacts :: Lens' Site [Maybe SiteContact]
sSiteContacts
  = lens _sSiteContacts
      (\ s a -> s{_sSiteContacts = a})
      . _Default
      . _Coerce

-- | Site-wide settings.
sSiteSettings :: Lens' Site (Maybe (Maybe SiteSettings))
sSiteSettings
  = lens _sSiteSettings
      (\ s a -> s{_sSiteSettings = a})

-- | Dimension value for the ID of this site. This is a read-only,
-- auto-generated field.
sIdDimensionValue :: Lens' Site (Maybe (Maybe DimensionValue))
sIdDimensionValue
  = lens _sIdDimensionValue
      (\ s a -> s{_sIdDimensionValue = a})

-- | Dimension value for the ID of the directory site. This is a read-only,
-- auto-generated field.
sDirectorySiteIdDimensionValue :: Lens' Site (Maybe (Maybe DimensionValue))
sDirectorySiteIdDimensionValue
  = lens _sDirectorySiteIdDimensionValue
      (\ s a -> s{_sDirectorySiteIdDimensionValue = a})

-- | Account ID of this site. This is a read-only field that can be left
-- blank.
sAccountId :: Lens' Site (Maybe Int64)
sAccountId
  = lens _sAccountId (\ s a -> s{_sAccountId = a})

-- | Name of this site.This is a required field. Must be less than 128
-- characters long. If this site is under a subaccount, the name must be
-- unique among sites of the same subaccount. Otherwise, this site is a
-- top-level site, and the name must be unique among top-level sites of the
-- same account.
sName :: Lens' Site (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Directory site associated with this site. This is a required field that
-- is read-only after insertion.
sDirectorySiteId :: Lens' Site (Maybe Int64)
sDirectorySiteId
  = lens _sDirectorySiteId
      (\ s a -> s{_sDirectorySiteId = a})

-- | ID of this site. This is a read-only, auto-generated field.
sId :: Lens' Site (Maybe Int64)
sId = lens _sId (\ s a -> s{_sId = a})

-- | Subaccount ID of this site. This is a read-only field that can be left
-- blank.
sSubaccountId :: Lens' Site (Maybe Int64)
sSubaccountId
  = lens _sSubaccountId
      (\ s a -> s{_sSubaccountId = a})

-- | Whether this site is approved.
sApproved :: Lens' Site (Maybe Bool)
sApproved
  = lens _sApproved (\ s a -> s{_sApproved = a})

instance FromJSON Site where
        parseJSON
          = withObject "Site"
              (\ o ->
                 Site <$>
                   (o .:? "kind" .!= "dfareporting#site") <*>
                     (o .:? "keyName")
                     <*> (o .:? "siteContacts" .!= mempty)
                     <*> (o .:? "siteSettings")
                     <*> (o .:? "idDimensionValue")
                     <*> (o .:? "directorySiteIdDimensionValue")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "directorySiteId")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "approved"))

instance ToJSON Site where
        toJSON Site{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sKind),
                  ("keyName" .=) <$> _sKeyName,
                  ("siteContacts" .=) <$> _sSiteContacts,
                  ("siteSettings" .=) <$> _sSiteSettings,
                  ("idDimensionValue" .=) <$> _sIdDimensionValue,
                  ("directorySiteIdDimensionValue" .=) <$>
                    _sDirectorySiteIdDimensionValue,
                  ("accountId" .=) <$> _sAccountId,
                  ("name" .=) <$> _sName,
                  ("directorySiteId" .=) <$> _sDirectorySiteId,
                  ("id" .=) <$> _sId,
                  ("subaccountId" .=) <$> _sSubaccountId,
                  ("approved" .=) <$> _sApproved])

-- | Site Contact
--
-- /See:/ 'siteContact' smart constructor.
data SiteContact = SiteContact
    { _scEmail       :: !(Maybe Text)
    , _scPhone       :: !(Maybe Text)
    , _scLastName    :: !(Maybe Text)
    , _scAddress     :: !(Maybe Text)
    , _scFirstName   :: !(Maybe Text)
    , _scId          :: !(Maybe Int64)
    , _scTitle       :: !(Maybe Text)
    , _scContactType :: !(Maybe SiteContactContactType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SiteContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scEmail'
--
-- * 'scPhone'
--
-- * 'scLastName'
--
-- * 'scAddress'
--
-- * 'scFirstName'
--
-- * 'scId'
--
-- * 'scTitle'
--
-- * 'scContactType'
siteContact
    :: SiteContact
siteContact =
    SiteContact
    { _scEmail = Nothing
    , _scPhone = Nothing
    , _scLastName = Nothing
    , _scAddress = Nothing
    , _scFirstName = Nothing
    , _scId = Nothing
    , _scTitle = Nothing
    , _scContactType = Nothing
    }

-- | Email address of this site contact. This is a required field.
scEmail :: Lens' SiteContact (Maybe Text)
scEmail = lens _scEmail (\ s a -> s{_scEmail = a})

-- | Primary phone number of this site contact.
scPhone :: Lens' SiteContact (Maybe Text)
scPhone = lens _scPhone (\ s a -> s{_scPhone = a})

-- | Last name of this site contact.
scLastName :: Lens' SiteContact (Maybe Text)
scLastName
  = lens _scLastName (\ s a -> s{_scLastName = a})

-- | Address of this site contact.
scAddress :: Lens' SiteContact (Maybe Text)
scAddress
  = lens _scAddress (\ s a -> s{_scAddress = a})

-- | First name of this site contact.
scFirstName :: Lens' SiteContact (Maybe Text)
scFirstName
  = lens _scFirstName (\ s a -> s{_scFirstName = a})

-- | ID of this site contact. This is a read-only, auto-generated field.
scId :: Lens' SiteContact (Maybe Int64)
scId = lens _scId (\ s a -> s{_scId = a})

-- | Title or designation of this site contact.
scTitle :: Lens' SiteContact (Maybe Text)
scTitle = lens _scTitle (\ s a -> s{_scTitle = a})

-- | Site contact type.
scContactType :: Lens' SiteContact (Maybe SiteContactContactType)
scContactType
  = lens _scContactType
      (\ s a -> s{_scContactType = a})

instance FromJSON SiteContact where
        parseJSON
          = withObject "SiteContact"
              (\ o ->
                 SiteContact <$>
                   (o .:? "email") <*> (o .:? "phone") <*>
                     (o .:? "lastName")
                     <*> (o .:? "address")
                     <*> (o .:? "firstName")
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "contactType"))

instance ToJSON SiteContact where
        toJSON SiteContact{..}
          = object
              (catMaybes
                 [("email" .=) <$> _scEmail,
                  ("phone" .=) <$> _scPhone,
                  ("lastName" .=) <$> _scLastName,
                  ("address" .=) <$> _scAddress,
                  ("firstName" .=) <$> _scFirstName,
                  ("id" .=) <$> _scId, ("title" .=) <$> _scTitle,
                  ("contactType" .=) <$> _scContactType])

-- | Site Settings
--
-- /See:/ 'siteSettings' smart constructor.
data SiteSettings = SiteSettings
    { _ssDisableNewCookie      :: !(Maybe Bool)
    , _ssDisableBrandSafeAds   :: !(Maybe Bool)
    , _ssLookbackConfiguration :: !(Maybe (Maybe LookbackConfiguration))
    , _ssTagSetting            :: !(Maybe (Maybe TagSetting))
    , _ssActiveViewOptOut      :: !(Maybe Bool)
    , _ssCreativeSettings      :: !(Maybe (Maybe CreativeSettings))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SiteSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssDisableNewCookie'
--
-- * 'ssDisableBrandSafeAds'
--
-- * 'ssLookbackConfiguration'
--
-- * 'ssTagSetting'
--
-- * 'ssActiveViewOptOut'
--
-- * 'ssCreativeSettings'
siteSettings
    :: SiteSettings
siteSettings =
    SiteSettings
    { _ssDisableNewCookie = Nothing
    , _ssDisableBrandSafeAds = Nothing
    , _ssLookbackConfiguration = Nothing
    , _ssTagSetting = Nothing
    , _ssActiveViewOptOut = Nothing
    , _ssCreativeSettings = Nothing
    }

-- | Whether new cookies are disabled for this site.
ssDisableNewCookie :: Lens' SiteSettings (Maybe Bool)
ssDisableNewCookie
  = lens _ssDisableNewCookie
      (\ s a -> s{_ssDisableNewCookie = a})

-- | Whether brand safe ads are disabled for this site.
ssDisableBrandSafeAds :: Lens' SiteSettings (Maybe Bool)
ssDisableBrandSafeAds
  = lens _ssDisableBrandSafeAds
      (\ s a -> s{_ssDisableBrandSafeAds = a})

-- | Lookback window settings for this site.
ssLookbackConfiguration :: Lens' SiteSettings (Maybe (Maybe LookbackConfiguration))
ssLookbackConfiguration
  = lens _ssLookbackConfiguration
      (\ s a -> s{_ssLookbackConfiguration = a})

-- | Configuration settings for dynamic and image floodlight tags.
ssTagSetting :: Lens' SiteSettings (Maybe (Maybe TagSetting))
ssTagSetting
  = lens _ssTagSetting (\ s a -> s{_ssTagSetting = a})

-- | Whether active view creatives are disabled for this site.
ssActiveViewOptOut :: Lens' SiteSettings (Maybe Bool)
ssActiveViewOptOut
  = lens _ssActiveViewOptOut
      (\ s a -> s{_ssActiveViewOptOut = a})

-- | Site-wide creative settings.
ssCreativeSettings :: Lens' SiteSettings (Maybe (Maybe CreativeSettings))
ssCreativeSettings
  = lens _ssCreativeSettings
      (\ s a -> s{_ssCreativeSettings = a})

instance FromJSON SiteSettings where
        parseJSON
          = withObject "SiteSettings"
              (\ o ->
                 SiteSettings <$>
                   (o .:? "disableNewCookie") <*>
                     (o .:? "disableBrandSafeAds")
                     <*> (o .:? "lookbackConfiguration")
                     <*> (o .:? "tagSetting")
                     <*> (o .:? "activeViewOptOut")
                     <*> (o .:? "creativeSettings"))

instance ToJSON SiteSettings where
        toJSON SiteSettings{..}
          = object
              (catMaybes
                 [("disableNewCookie" .=) <$> _ssDisableNewCookie,
                  ("disableBrandSafeAds" .=) <$>
                    _ssDisableBrandSafeAds,
                  ("lookbackConfiguration" .=) <$>
                    _ssLookbackConfiguration,
                  ("tagSetting" .=) <$> _ssTagSetting,
                  ("activeViewOptOut" .=) <$> _ssActiveViewOptOut,
                  ("creativeSettings" .=) <$> _ssCreativeSettings])

-- | Site List Response
--
-- /See:/ 'sitesListResponse' smart constructor.
data SitesListResponse = SitesListResponse
    { _slrNextPageToken :: !(Maybe Text)
    , _slrKind          :: !Text
    , _slrSites         :: !(Maybe [Maybe Site])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrNextPageToken'
--
-- * 'slrKind'
--
-- * 'slrSites'
sitesListResponse
    :: SitesListResponse
sitesListResponse =
    SitesListResponse
    { _slrNextPageToken = Nothing
    , _slrKind = "dfareporting#sitesListResponse"
    , _slrSites = Nothing
    }

-- | Pagination token to be used for the next list operation.
slrNextPageToken :: Lens' SitesListResponse (Maybe Text)
slrNextPageToken
  = lens _slrNextPageToken
      (\ s a -> s{_slrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#sitesListResponse\".
slrKind :: Lens' SitesListResponse Text
slrKind = lens _slrKind (\ s a -> s{_slrKind = a})

-- | Site collection.
slrSites :: Lens' SitesListResponse [Maybe Site]
slrSites
  = lens _slrSites (\ s a -> s{_slrSites = a}) .
      _Default
      . _Coerce

instance FromJSON SitesListResponse where
        parseJSON
          = withObject "SitesListResponse"
              (\ o ->
                 SitesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dfareporting#sitesListResponse")
                     <*> (o .:? "sites" .!= mempty))

instance ToJSON SitesListResponse where
        toJSON SitesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _slrNextPageToken,
                  Just ("kind" .= _slrKind),
                  ("sites" .=) <$> _slrSites])

-- | Represents the dimensions of ads, placements, creatives, or creative
-- assets.
--
-- /See:/ 'size' smart constructor.
data Size = Size
    { _ssHeight :: !(Maybe Int32)
    , _ssKind   :: !Text
    , _ssWidth  :: !(Maybe Int32)
    , _ssIab    :: !(Maybe Bool)
    , _ssId     :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Size' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssHeight'
--
-- * 'ssKind'
--
-- * 'ssWidth'
--
-- * 'ssIab'
--
-- * 'ssId'
size
    :: Size
size =
    Size
    { _ssHeight = Nothing
    , _ssKind = "dfareporting#size"
    , _ssWidth = Nothing
    , _ssIab = Nothing
    , _ssId = Nothing
    }

-- | Height of this size.
ssHeight :: Lens' Size (Maybe Int32)
ssHeight = lens _ssHeight (\ s a -> s{_ssHeight = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#size\".
ssKind :: Lens' Size Text
ssKind = lens _ssKind (\ s a -> s{_ssKind = a})

-- | Width of this size.
ssWidth :: Lens' Size (Maybe Int32)
ssWidth = lens _ssWidth (\ s a -> s{_ssWidth = a})

-- | IAB standard size. This is a read-only, auto-generated field.
ssIab :: Lens' Size (Maybe Bool)
ssIab = lens _ssIab (\ s a -> s{_ssIab = a})

-- | ID of this size. This is a read-only, auto-generated field.
ssId :: Lens' Size (Maybe Int64)
ssId = lens _ssId (\ s a -> s{_ssId = a})

instance FromJSON Size where
        parseJSON
          = withObject "Size"
              (\ o ->
                 Size <$>
                   (o .:? "height") <*>
                     (o .:? "kind" .!= "dfareporting#size")
                     <*> (o .:? "width")
                     <*> (o .:? "iab")
                     <*> (o .:? "id"))

instance ToJSON Size where
        toJSON Size{..}
          = object
              (catMaybes
                 [("height" .=) <$> _ssHeight,
                  Just ("kind" .= _ssKind), ("width" .=) <$> _ssWidth,
                  ("iab" .=) <$> _ssIab, ("id" .=) <$> _ssId])

-- | Size List Response
--
-- /See:/ 'sizesListResponse' smart constructor.
data SizesListResponse = SizesListResponse
    { _sizKind  :: !Text
    , _sizSizes :: !(Maybe [Maybe Size])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sizKind'
--
-- * 'sizSizes'
sizesListResponse
    :: SizesListResponse
sizesListResponse =
    SizesListResponse
    { _sizKind = "dfareporting#sizesListResponse"
    , _sizSizes = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#sizesListResponse\".
sizKind :: Lens' SizesListResponse Text
sizKind = lens _sizKind (\ s a -> s{_sizKind = a})

-- | Size collection.
sizSizes :: Lens' SizesListResponse [Maybe Size]
sizSizes
  = lens _sizSizes (\ s a -> s{_sizSizes = a}) .
      _Default
      . _Coerce

instance FromJSON SizesListResponse where
        parseJSON
          = withObject "SizesListResponse"
              (\ o ->
                 SizesListResponse <$>
                   (o .:? "kind" .!= "dfareporting#sizesListResponse")
                     <*> (o .:? "sizes" .!= mempty))

instance ToJSON SizesListResponse where
        toJSON SizesListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sizKind),
                  ("sizes" .=) <$> _sizSizes])

-- | Represents a sorted dimension.
--
-- /See:/ 'sortedDimension' smart constructor.
data SortedDimension = SortedDimension
    { _sdKind      :: !Text
    , _sdSortOrder :: !(Maybe SortedDimensionSortOrder)
    , _sdName      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SortedDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdKind'
--
-- * 'sdSortOrder'
--
-- * 'sdName'
sortedDimension
    :: SortedDimension
sortedDimension =
    SortedDimension
    { _sdKind = "dfareporting#sortedDimension"
    , _sdSortOrder = Nothing
    , _sdName = Nothing
    }

-- | The kind of resource this is, in this case dfareporting#sortedDimension.
sdKind :: Lens' SortedDimension Text
sdKind = lens _sdKind (\ s a -> s{_sdKind = a})

-- | An optional sort order for the dimension column.
sdSortOrder :: Lens' SortedDimension (Maybe SortedDimensionSortOrder)
sdSortOrder
  = lens _sdSortOrder (\ s a -> s{_sdSortOrder = a})

-- | The name of the dimension.
sdName :: Lens' SortedDimension (Maybe Text)
sdName = lens _sdName (\ s a -> s{_sdName = a})

instance FromJSON SortedDimension where
        parseJSON
          = withObject "SortedDimension"
              (\ o ->
                 SortedDimension <$>
                   (o .:? "kind" .!= "dfareporting#sortedDimension") <*>
                     (o .:? "sortOrder")
                     <*> (o .:? "name"))

instance ToJSON SortedDimension where
        toJSON SortedDimension{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sdKind),
                  ("sortOrder" .=) <$> _sdSortOrder,
                  ("name" .=) <$> _sdName])

-- | Contains properties of a DCM subaccount.
--
-- /See:/ 'subaccount' smart constructor.
data Subaccount = Subaccount
    { _subuKind                   :: !Text
    , _subuAvailablePermissionIds :: !(Maybe [Int64])
    , _subuAccountId              :: !(Maybe Int64)
    , _subuName                   :: !(Maybe Text)
    , _subuId                     :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subaccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subuKind'
--
-- * 'subuAvailablePermissionIds'
--
-- * 'subuAccountId'
--
-- * 'subuName'
--
-- * 'subuId'
subaccount
    :: Subaccount
subaccount =
    Subaccount
    { _subuKind = "dfareporting#subaccount"
    , _subuAvailablePermissionIds = Nothing
    , _subuAccountId = Nothing
    , _subuName = Nothing
    , _subuId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#subaccount\".
subuKind :: Lens' Subaccount Text
subuKind = lens _subuKind (\ s a -> s{_subuKind = a})

-- | IDs of the available user role permissions for this subaccount.
subuAvailablePermissionIds :: Lens' Subaccount [Int64]
subuAvailablePermissionIds
  = lens _subuAvailablePermissionIds
      (\ s a -> s{_subuAvailablePermissionIds = a})
      . _Default
      . _Coerce

-- | ID of the account that contains this subaccount. This is a read-only
-- field that can be left blank.
subuAccountId :: Lens' Subaccount (Maybe Int64)
subuAccountId
  = lens _subuAccountId
      (\ s a -> s{_subuAccountId = a})

-- | Name of this subaccount. This is a required field. Must be less than 128
-- characters long and be unique among subaccounts of the same account.
subuName :: Lens' Subaccount (Maybe Text)
subuName = lens _subuName (\ s a -> s{_subuName = a})

-- | ID of this subaccount. This is a read-only, auto-generated field.
subuId :: Lens' Subaccount (Maybe Int64)
subuId = lens _subuId (\ s a -> s{_subuId = a})

instance FromJSON Subaccount where
        parseJSON
          = withObject "Subaccount"
              (\ o ->
                 Subaccount <$>
                   (o .:? "kind" .!= "dfareporting#subaccount") <*>
                     (o .:? "availablePermissionIds" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Subaccount where
        toJSON Subaccount{..}
          = object
              (catMaybes
                 [Just ("kind" .= _subuKind),
                  ("availablePermissionIds" .=) <$>
                    _subuAvailablePermissionIds,
                  ("accountId" .=) <$> _subuAccountId,
                  ("name" .=) <$> _subuName, ("id" .=) <$> _subuId])

-- | Subaccount List Response
--
-- /See:/ 'subaccountsListResponse' smart constructor.
data SubaccountsListResponse = SubaccountsListResponse
    { _subNextPageToken :: !(Maybe Text)
    , _subKind          :: !Text
    , _subSubaccounts   :: !(Maybe [Maybe Subaccount])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subNextPageToken'
--
-- * 'subKind'
--
-- * 'subSubaccounts'
subaccountsListResponse
    :: SubaccountsListResponse
subaccountsListResponse =
    SubaccountsListResponse
    { _subNextPageToken = Nothing
    , _subKind = "dfareporting#subaccountsListResponse"
    , _subSubaccounts = Nothing
    }

-- | Pagination token to be used for the next list operation.
subNextPageToken :: Lens' SubaccountsListResponse (Maybe Text)
subNextPageToken
  = lens _subNextPageToken
      (\ s a -> s{_subNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#subaccountsListResponse\".
subKind :: Lens' SubaccountsListResponse Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | Subaccount collection.
subSubaccounts :: Lens' SubaccountsListResponse [Maybe Subaccount]
subSubaccounts
  = lens _subSubaccounts
      (\ s a -> s{_subSubaccounts = a})
      . _Default
      . _Coerce

instance FromJSON SubaccountsListResponse where
        parseJSON
          = withObject "SubaccountsListResponse"
              (\ o ->
                 SubaccountsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#subaccountsListResponse")
                     <*> (o .:? "subaccounts" .!= mempty))

instance ToJSON SubaccountsListResponse where
        toJSON SubaccountsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _subNextPageToken,
                  Just ("kind" .= _subKind),
                  ("subaccounts" .=) <$> _subSubaccounts])

-- | Placement Tag Data
--
-- /See:/ 'tagData' smart constructor.
data TagData = TagData
    { _tdClickTag      :: !(Maybe Text)
    , _tdFormat        :: !(Maybe TagDataFormat)
    , _tdCreativeId    :: !(Maybe Int64)
    , _tdAdId          :: !(Maybe Int64)
    , _tdImpressionTag :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TagData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdClickTag'
--
-- * 'tdFormat'
--
-- * 'tdCreativeId'
--
-- * 'tdAdId'
--
-- * 'tdImpressionTag'
tagData
    :: TagData
tagData =
    TagData
    { _tdClickTag = Nothing
    , _tdFormat = Nothing
    , _tdCreativeId = Nothing
    , _tdAdId = Nothing
    , _tdImpressionTag = Nothing
    }

-- | Tag string to record a click.
tdClickTag :: Lens' TagData (Maybe Text)
tdClickTag
  = lens _tdClickTag (\ s a -> s{_tdClickTag = a})

-- | TagData tag format of this tag.
tdFormat :: Lens' TagData (Maybe TagDataFormat)
tdFormat = lens _tdFormat (\ s a -> s{_tdFormat = a})

-- | Creative associated with this placement tag.
tdCreativeId :: Lens' TagData (Maybe Int64)
tdCreativeId
  = lens _tdCreativeId (\ s a -> s{_tdCreativeId = a})

-- | Ad associated with this placement tag.
tdAdId :: Lens' TagData (Maybe Int64)
tdAdId = lens _tdAdId (\ s a -> s{_tdAdId = a})

-- | Tag string for serving an ad.
tdImpressionTag :: Lens' TagData (Maybe Text)
tdImpressionTag
  = lens _tdImpressionTag
      (\ s a -> s{_tdImpressionTag = a})

instance FromJSON TagData where
        parseJSON
          = withObject "TagData"
              (\ o ->
                 TagData <$>
                   (o .:? "clickTag") <*> (o .:? "format") <*>
                     (o .:? "creativeId")
                     <*> (o .:? "adId")
                     <*> (o .:? "impressionTag"))

instance ToJSON TagData where
        toJSON TagData{..}
          = object
              (catMaybes
                 [("clickTag" .=) <$> _tdClickTag,
                  ("format" .=) <$> _tdFormat,
                  ("creativeId" .=) <$> _tdCreativeId,
                  ("adId" .=) <$> _tdAdId,
                  ("impressionTag" .=) <$> _tdImpressionTag])

-- | Tag Settings
--
-- /See:/ 'tagSetting' smart constructor.
data TagSetting = TagSetting
    { _tsKeywordOption           :: !(Maybe TagSettingKeywordOption)
    , _tsIncludeClickThroughUrls :: !(Maybe Bool)
    , _tsIncludeClickTracking    :: !(Maybe Bool)
    , _tsAdditionalKeyValues     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TagSetting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsKeywordOption'
--
-- * 'tsIncludeClickThroughUrls'
--
-- * 'tsIncludeClickTracking'
--
-- * 'tsAdditionalKeyValues'
tagSetting
    :: TagSetting
tagSetting =
    TagSetting
    { _tsKeywordOption = Nothing
    , _tsIncludeClickThroughUrls = Nothing
    , _tsIncludeClickTracking = Nothing
    , _tsAdditionalKeyValues = Nothing
    }

-- | Option specifying how keywords are embedded in ad tags. This setting can
-- be used to specify whether keyword placeholders are inserted in
-- placement tags for this site. Publishers can then add keywords to those
-- placeholders.
tsKeywordOption :: Lens' TagSetting (Maybe TagSettingKeywordOption)
tsKeywordOption
  = lens _tsKeywordOption
      (\ s a -> s{_tsKeywordOption = a})

-- | Whether static landing page URLs should be included in the tags. This
-- setting applies only to placements.
tsIncludeClickThroughUrls :: Lens' TagSetting (Maybe Bool)
tsIncludeClickThroughUrls
  = lens _tsIncludeClickThroughUrls
      (\ s a -> s{_tsIncludeClickThroughUrls = a})

-- | Whether click-tracking string should be included in the tags.
tsIncludeClickTracking :: Lens' TagSetting (Maybe Bool)
tsIncludeClickTracking
  = lens _tsIncludeClickTracking
      (\ s a -> s{_tsIncludeClickTracking = a})

-- | Additional key-values to be included in tags. Each key-value pair must
-- be of the form key=value, and pairs must be separated by a semicolon
-- (;). Keys and values must not contain commas. For example,
-- id=2;color=red is a valid value for this field.
tsAdditionalKeyValues :: Lens' TagSetting (Maybe Text)
tsAdditionalKeyValues
  = lens _tsAdditionalKeyValues
      (\ s a -> s{_tsAdditionalKeyValues = a})

instance FromJSON TagSetting where
        parseJSON
          = withObject "TagSetting"
              (\ o ->
                 TagSetting <$>
                   (o .:? "keywordOption") <*>
                     (o .:? "includeClickThroughUrls")
                     <*> (o .:? "includeClickTracking")
                     <*> (o .:? "additionalKeyValues"))

instance ToJSON TagSetting where
        toJSON TagSetting{..}
          = object
              (catMaybes
                 [("keywordOption" .=) <$> _tsKeywordOption,
                  ("includeClickThroughUrls" .=) <$>
                    _tsIncludeClickThroughUrls,
                  ("includeClickTracking" .=) <$>
                    _tsIncludeClickTracking,
                  ("additionalKeyValues" .=) <$>
                    _tsAdditionalKeyValues])

-- | Dynamic and Image Tag Settings.
--
-- /See:/ 'tagSettings' smart constructor.
data TagSettings = TagSettings
    { _tsDynamicTagEnabled :: !(Maybe Bool)
    , _tsImageTagEnabled   :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TagSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsDynamicTagEnabled'
--
-- * 'tsImageTagEnabled'
tagSettings
    :: TagSettings
tagSettings =
    TagSettings
    { _tsDynamicTagEnabled = Nothing
    , _tsImageTagEnabled = Nothing
    }

-- | Whether dynamic floodlight tags are enabled.
tsDynamicTagEnabled :: Lens' TagSettings (Maybe Bool)
tsDynamicTagEnabled
  = lens _tsDynamicTagEnabled
      (\ s a -> s{_tsDynamicTagEnabled = a})

-- | Whether image tags are enabled.
tsImageTagEnabled :: Lens' TagSettings (Maybe Bool)
tsImageTagEnabled
  = lens _tsImageTagEnabled
      (\ s a -> s{_tsImageTagEnabled = a})

instance FromJSON TagSettings where
        parseJSON
          = withObject "TagSettings"
              (\ o ->
                 TagSettings <$>
                   (o .:? "dynamicTagEnabled") <*>
                     (o .:? "imageTagEnabled"))

instance ToJSON TagSettings where
        toJSON TagSettings{..}
          = object
              (catMaybes
                 [("dynamicTagEnabled" .=) <$> _tsDynamicTagEnabled,
                  ("imageTagEnabled" .=) <$> _tsImageTagEnabled])

-- | Target Window.
--
-- /See:/ 'targetWindow' smart constructor.
data TargetWindow = TargetWindow
    { _twCustomHtml         :: !(Maybe Text)
    , _twTargetWindowOption :: !(Maybe TargetWindowTargetWindowOption)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'twCustomHtml'
--
-- * 'twTargetWindowOption'
targetWindow
    :: TargetWindow
targetWindow =
    TargetWindow
    { _twCustomHtml = Nothing
    , _twTargetWindowOption = Nothing
    }

-- | User-entered value.
twCustomHtml :: Lens' TargetWindow (Maybe Text)
twCustomHtml
  = lens _twCustomHtml (\ s a -> s{_twCustomHtml = a})

-- | Type of browser window for which the backup image of the flash creative
-- can be displayed.
twTargetWindowOption :: Lens' TargetWindow (Maybe TargetWindowTargetWindowOption)
twTargetWindowOption
  = lens _twTargetWindowOption
      (\ s a -> s{_twTargetWindowOption = a})

instance FromJSON TargetWindow where
        parseJSON
          = withObject "TargetWindow"
              (\ o ->
                 TargetWindow <$>
                   (o .:? "customHtml") <*>
                     (o .:? "targetWindowOption"))

instance ToJSON TargetWindow where
        toJSON TargetWindow{..}
          = object
              (catMaybes
                 [("customHtml" .=) <$> _twCustomHtml,
                  ("targetWindowOption" .=) <$> _twTargetWindowOption])

-- | Contains properties of a targetable remarketing list. Remarketing
-- enables you to create lists of users who have performed specific actions
-- on a site, then target ads to members of those lists. This resource is a
-- read-only view of a remarketing list to be used to faciliate targeting
-- ads to specific lists. Remarketing lists that are owned by your
-- advertisers and those that are shared to your advertisers or account are
-- accessible via this resource. To manage remarketing lists that are owned
-- by your advertisers, use the RemarketingLists resource.
--
-- /See:/ 'targetableRemarketingList' smart constructor.
data TargetableRemarketingList = TargetableRemarketingList
    { _trlListSize                   :: !(Maybe Int64)
    , _trlLifeSpan                   :: !(Maybe Int64)
    , _trlKind                       :: !Text
    , _trlAdvertiserId               :: !(Maybe Int64)
    , _trlAdvertiserIdDimensionValue :: !(Maybe (Maybe DimensionValue))
    , _trlActive                     :: !(Maybe Bool)
    , _trlAccountId                  :: !(Maybe Int64)
    , _trlName                       :: !(Maybe Text)
    , _trlListSource                 :: !(Maybe TargetableRemarketingListListSource)
    , _trlId                         :: !(Maybe Int64)
    , _trlSubaccountId               :: !(Maybe Int64)
    , _trlDescription                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trlListSize'
--
-- * 'trlLifeSpan'
--
-- * 'trlKind'
--
-- * 'trlAdvertiserId'
--
-- * 'trlAdvertiserIdDimensionValue'
--
-- * 'trlActive'
--
-- * 'trlAccountId'
--
-- * 'trlName'
--
-- * 'trlListSource'
--
-- * 'trlId'
--
-- * 'trlSubaccountId'
--
-- * 'trlDescription'
targetableRemarketingList
    :: TargetableRemarketingList
targetableRemarketingList =
    TargetableRemarketingList
    { _trlListSize = Nothing
    , _trlLifeSpan = Nothing
    , _trlKind = "dfareporting#targetableRemarketingList"
    , _trlAdvertiserId = Nothing
    , _trlAdvertiserIdDimensionValue = Nothing
    , _trlActive = Nothing
    , _trlAccountId = Nothing
    , _trlName = Nothing
    , _trlListSource = Nothing
    , _trlId = Nothing
    , _trlSubaccountId = Nothing
    , _trlDescription = Nothing
    }

-- | Number of users currently in the list. This is a read-only field.
trlListSize :: Lens' TargetableRemarketingList (Maybe Int64)
trlListSize
  = lens _trlListSize (\ s a -> s{_trlListSize = a})

-- | Number of days that a user should remain in the targetable remarketing
-- list without an impression.
trlLifeSpan :: Lens' TargetableRemarketingList (Maybe Int64)
trlLifeSpan
  = lens _trlLifeSpan (\ s a -> s{_trlLifeSpan = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#targetableRemarketingList\".
trlKind :: Lens' TargetableRemarketingList Text
trlKind = lens _trlKind (\ s a -> s{_trlKind = a})

-- | Dimension value for the advertiser ID that owns this targetable
-- remarketing list.
trlAdvertiserId :: Lens' TargetableRemarketingList (Maybe Int64)
trlAdvertiserId
  = lens _trlAdvertiserId
      (\ s a -> s{_trlAdvertiserId = a})

-- | Dimension value for the ID of the advertiser.
trlAdvertiserIdDimensionValue :: Lens' TargetableRemarketingList (Maybe (Maybe DimensionValue))
trlAdvertiserIdDimensionValue
  = lens _trlAdvertiserIdDimensionValue
      (\ s a -> s{_trlAdvertiserIdDimensionValue = a})

-- | Whether this targetable remarketing list is active.
trlActive :: Lens' TargetableRemarketingList (Maybe Bool)
trlActive
  = lens _trlActive (\ s a -> s{_trlActive = a})

-- | Account ID of this remarketing list. This is a read-only, auto-generated
-- field that is only returned in GET requests.
trlAccountId :: Lens' TargetableRemarketingList (Maybe Int64)
trlAccountId
  = lens _trlAccountId (\ s a -> s{_trlAccountId = a})

-- | Name of the targetable remarketing list. Is no greater than 128
-- characters long.
trlName :: Lens' TargetableRemarketingList (Maybe Text)
trlName = lens _trlName (\ s a -> s{_trlName = a})

-- | Product from which this targetable remarketing list was originated.
trlListSource :: Lens' TargetableRemarketingList (Maybe TargetableRemarketingListListSource)
trlListSource
  = lens _trlListSource
      (\ s a -> s{_trlListSource = a})

-- | Targetable remarketing list ID.
trlId :: Lens' TargetableRemarketingList (Maybe Int64)
trlId = lens _trlId (\ s a -> s{_trlId = a})

-- | Subaccount ID of this remarketing list. This is a read-only,
-- auto-generated field that is only returned in GET requests.
trlSubaccountId :: Lens' TargetableRemarketingList (Maybe Int64)
trlSubaccountId
  = lens _trlSubaccountId
      (\ s a -> s{_trlSubaccountId = a})

-- | Targetable remarketing list description.
trlDescription :: Lens' TargetableRemarketingList (Maybe Text)
trlDescription
  = lens _trlDescription
      (\ s a -> s{_trlDescription = a})

instance FromJSON TargetableRemarketingList where
        parseJSON
          = withObject "TargetableRemarketingList"
              (\ o ->
                 TargetableRemarketingList <$>
                   (o .:? "listSize") <*> (o .:? "lifeSpan") <*>
                     (o .:? "kind" .!=
                        "dfareporting#targetableRemarketingList")
                     <*> (o .:? "advertiserId")
                     <*> (o .:? "advertiserIdDimensionValue")
                     <*> (o .:? "active")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "listSource")
                     <*> (o .:? "id")
                     <*> (o .:? "subaccountId")
                     <*> (o .:? "description"))

instance ToJSON TargetableRemarketingList where
        toJSON TargetableRemarketingList{..}
          = object
              (catMaybes
                 [("listSize" .=) <$> _trlListSize,
                  ("lifeSpan" .=) <$> _trlLifeSpan,
                  Just ("kind" .= _trlKind),
                  ("advertiserId" .=) <$> _trlAdvertiserId,
                  ("advertiserIdDimensionValue" .=) <$>
                    _trlAdvertiserIdDimensionValue,
                  ("active" .=) <$> _trlActive,
                  ("accountId" .=) <$> _trlAccountId,
                  ("name" .=) <$> _trlName,
                  ("listSource" .=) <$> _trlListSource,
                  ("id" .=) <$> _trlId,
                  ("subaccountId" .=) <$> _trlSubaccountId,
                  ("description" .=) <$> _trlDescription])

-- | Targetable remarketing list response
--
-- /See:/ 'targetableRemarketingListsListResponse' smart constructor.
data TargetableRemarketingListsListResponse = TargetableRemarketingListsListResponse
    { _trllrNextPageToken              :: !(Maybe Text)
    , _trllrKind                       :: !Text
    , _trllrTargetableRemarketingLists :: !(Maybe [Maybe TargetableRemarketingList])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingListsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trllrNextPageToken'
--
-- * 'trllrKind'
--
-- * 'trllrTargetableRemarketingLists'
targetableRemarketingListsListResponse
    :: TargetableRemarketingListsListResponse
targetableRemarketingListsListResponse =
    TargetableRemarketingListsListResponse
    { _trllrNextPageToken = Nothing
    , _trllrKind = "dfareporting#targetableRemarketingListsListResponse"
    , _trllrTargetableRemarketingLists = Nothing
    }

-- | Pagination token to be used for the next list operation.
trllrNextPageToken :: Lens' TargetableRemarketingListsListResponse (Maybe Text)
trllrNextPageToken
  = lens _trllrNextPageToken
      (\ s a -> s{_trllrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#targetableRemarketingListsListResponse\".
trllrKind :: Lens' TargetableRemarketingListsListResponse Text
trllrKind
  = lens _trllrKind (\ s a -> s{_trllrKind = a})

-- | Targetable remarketing list collection.
trllrTargetableRemarketingLists :: Lens' TargetableRemarketingListsListResponse [Maybe TargetableRemarketingList]
trllrTargetableRemarketingLists
  = lens _trllrTargetableRemarketingLists
      (\ s a -> s{_trllrTargetableRemarketingLists = a})
      . _Default
      . _Coerce

instance FromJSON
         TargetableRemarketingListsListResponse where
        parseJSON
          = withObject "TargetableRemarketingListsListResponse"
              (\ o ->
                 TargetableRemarketingListsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#targetableRemarketingListsListResponse")
                     <*> (o .:? "targetableRemarketingLists" .!= mempty))

instance ToJSON
         TargetableRemarketingListsListResponse where
        toJSON TargetableRemarketingListsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _trllrNextPageToken,
                  Just ("kind" .= _trllrKind),
                  ("targetableRemarketingLists" .=) <$>
                    _trllrTargetableRemarketingLists])

-- | Technology Targeting.
--
-- /See:/ 'technologyTargeting' smart constructor.
data TechnologyTargeting = TechnologyTargeting
    { _ttMobileCarriers          :: !(Maybe [Maybe MobileCarrier])
    , _ttOperatingSystemVersions :: !(Maybe [Maybe OperatingSystemVersion])
    , _ttPlatformTypes           :: !(Maybe [Maybe PlatformType])
    , _ttBrowsers                :: !(Maybe [Maybe Browser])
    , _ttConnectionTypes         :: !(Maybe [Maybe ConnectionType])
    , _ttOperatingSystems        :: !(Maybe [Maybe OperatingSystem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TechnologyTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttMobileCarriers'
--
-- * 'ttOperatingSystemVersions'
--
-- * 'ttPlatformTypes'
--
-- * 'ttBrowsers'
--
-- * 'ttConnectionTypes'
--
-- * 'ttOperatingSystems'
technologyTargeting
    :: TechnologyTargeting
technologyTargeting =
    TechnologyTargeting
    { _ttMobileCarriers = Nothing
    , _ttOperatingSystemVersions = Nothing
    , _ttPlatformTypes = Nothing
    , _ttBrowsers = Nothing
    , _ttConnectionTypes = Nothing
    , _ttOperatingSystems = Nothing
    }

-- | Mobile carriers that this ad targets. For each mobile carrier only id is
-- required, and the other fields are populated automatically when the ad
-- is inserted or updated. If targeting a mobile carrier, do not set
-- targeting for any zip codes.
ttMobileCarriers :: Lens' TechnologyTargeting [Maybe MobileCarrier]
ttMobileCarriers
  = lens _ttMobileCarriers
      (\ s a -> s{_ttMobileCarriers = a})
      . _Default
      . _Coerce

-- | Operating system versions that this ad targets. To target all versions,
-- use operatingSystems. For each operating system version, only id is
-- required. The other fields are populated automatically when the ad is
-- inserted or updated. If targeting an operating system version, do not
-- set targeting for the corresponding operating system in
-- operatingSystems.
ttOperatingSystemVersions :: Lens' TechnologyTargeting [Maybe OperatingSystemVersion]
ttOperatingSystemVersions
  = lens _ttOperatingSystemVersions
      (\ s a -> s{_ttOperatingSystemVersions = a})
      . _Default
      . _Coerce

-- | Platform types that this ad targets. For example, desktop, mobile, or
-- tablet. For each platform type, only id is required, and the other
-- fields are populated automatically when the ad is inserted or updated.
ttPlatformTypes :: Lens' TechnologyTargeting [Maybe PlatformType]
ttPlatformTypes
  = lens _ttPlatformTypes
      (\ s a -> s{_ttPlatformTypes = a})
      . _Default
      . _Coerce

-- | Browsers that this ad targets. For each browser either set
-- browserVersionId or dartId along with the version numbers. If both are
-- specified, only browserVersionId will be used.The other fields are
-- populated automatically when the ad is inserted or updated.
ttBrowsers :: Lens' TechnologyTargeting [Maybe Browser]
ttBrowsers
  = lens _ttBrowsers (\ s a -> s{_ttBrowsers = a}) .
      _Default
      . _Coerce

-- | Connection types that this ad targets. For each connection type only id
-- is required.The other fields are populated automatically when the ad is
-- inserted or updated.
ttConnectionTypes :: Lens' TechnologyTargeting [Maybe ConnectionType]
ttConnectionTypes
  = lens _ttConnectionTypes
      (\ s a -> s{_ttConnectionTypes = a})
      . _Default
      . _Coerce

-- | Operating systems that this ad targets. To target specific versions, use
-- operatingSystemVersions. For each operating system only dartId is
-- required. The other fields are populated automatically when the ad is
-- inserted or updated. If targeting an operating system, do not set
-- targeting for operating system versions for the same operating system.
ttOperatingSystems :: Lens' TechnologyTargeting [Maybe OperatingSystem]
ttOperatingSystems
  = lens _ttOperatingSystems
      (\ s a -> s{_ttOperatingSystems = a})
      . _Default
      . _Coerce

instance FromJSON TechnologyTargeting where
        parseJSON
          = withObject "TechnologyTargeting"
              (\ o ->
                 TechnologyTargeting <$>
                   (o .:? "mobileCarriers" .!= mempty) <*>
                     (o .:? "operatingSystemVersions" .!= mempty)
                     <*> (o .:? "platformTypes" .!= mempty)
                     <*> (o .:? "browsers" .!= mempty)
                     <*> (o .:? "connectionTypes" .!= mempty)
                     <*> (o .:? "operatingSystems" .!= mempty))

instance ToJSON TechnologyTargeting where
        toJSON TechnologyTargeting{..}
          = object
              (catMaybes
                 [("mobileCarriers" .=) <$> _ttMobileCarriers,
                  ("operatingSystemVersions" .=) <$>
                    _ttOperatingSystemVersions,
                  ("platformTypes" .=) <$> _ttPlatformTypes,
                  ("browsers" .=) <$> _ttBrowsers,
                  ("connectionTypes" .=) <$> _ttConnectionTypes,
                  ("operatingSystems" .=) <$> _ttOperatingSystems])

-- | Third Party Authentication Token
--
-- /See:/ 'thirdPartyAuthenticationToken' smart constructor.
data ThirdPartyAuthenticationToken = ThirdPartyAuthenticationToken
    { _tpatValue :: !(Maybe Text)
    , _tpatName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThirdPartyAuthenticationToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpatValue'
--
-- * 'tpatName'
thirdPartyAuthenticationToken
    :: ThirdPartyAuthenticationToken
thirdPartyAuthenticationToken =
    ThirdPartyAuthenticationToken
    { _tpatValue = Nothing
    , _tpatName = Nothing
    }

-- | Value of the third-party authentication token. This is a read-only,
-- auto-generated field.
tpatValue :: Lens' ThirdPartyAuthenticationToken (Maybe Text)
tpatValue
  = lens _tpatValue (\ s a -> s{_tpatValue = a})

-- | Name of the third-party authentication token.
tpatName :: Lens' ThirdPartyAuthenticationToken (Maybe Text)
tpatName = lens _tpatName (\ s a -> s{_tpatName = a})

instance FromJSON ThirdPartyAuthenticationToken where
        parseJSON
          = withObject "ThirdPartyAuthenticationToken"
              (\ o ->
                 ThirdPartyAuthenticationToken <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON ThirdPartyAuthenticationToken where
        toJSON ThirdPartyAuthenticationToken{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tpatValue,
                  ("name" .=) <$> _tpatName])

-- | Third-party Tracking URL.
--
-- /See:/ 'thirdPartyTrackingUrl' smart constructor.
data ThirdPartyTrackingUrl = ThirdPartyTrackingUrl
    { _tptuUrl               :: !(Maybe Text)
    , _tptuThirdPartyUrlType :: !(Maybe ThirdPartyTrackingUrlThirdPartyUrlType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThirdPartyTrackingUrl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tptuUrl'
--
-- * 'tptuThirdPartyUrlType'
thirdPartyTrackingUrl
    :: ThirdPartyTrackingUrl
thirdPartyTrackingUrl =
    ThirdPartyTrackingUrl
    { _tptuUrl = Nothing
    , _tptuThirdPartyUrlType = Nothing
    }

-- | URL for the specified third-party URL type.
tptuUrl :: Lens' ThirdPartyTrackingUrl (Maybe Text)
tptuUrl = lens _tptuUrl (\ s a -> s{_tptuUrl = a})

-- | Third-party URL type for in-stream video creatives.
tptuThirdPartyUrlType :: Lens' ThirdPartyTrackingUrl (Maybe ThirdPartyTrackingUrlThirdPartyUrlType)
tptuThirdPartyUrlType
  = lens _tptuThirdPartyUrlType
      (\ s a -> s{_tptuThirdPartyUrlType = a})

instance FromJSON ThirdPartyTrackingUrl where
        parseJSON
          = withObject "ThirdPartyTrackingUrl"
              (\ o ->
                 ThirdPartyTrackingUrl <$>
                   (o .:? "url") <*> (o .:? "thirdPartyUrlType"))

instance ToJSON ThirdPartyTrackingUrl where
        toJSON ThirdPartyTrackingUrl{..}
          = object
              (catMaybes
                 [("url" .=) <$> _tptuUrl,
                  ("thirdPartyUrlType" .=) <$> _tptuThirdPartyUrlType])

-- | User Defined Variable configuration.
--
-- /See:/ 'userDefinedVariableConfiguration' smart constructor.
data UserDefinedVariableConfiguration = UserDefinedVariableConfiguration
    { _udvcReportName   :: !(Maybe Text)
    , _udvcDataType     :: !(Maybe UserDefinedVariableConfigurationDataType)
    , _udvcVariableType :: !(Maybe UserDefinedVariableConfigurationVariableType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserDefinedVariableConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udvcReportName'
--
-- * 'udvcDataType'
--
-- * 'udvcVariableType'
userDefinedVariableConfiguration
    :: UserDefinedVariableConfiguration
userDefinedVariableConfiguration =
    UserDefinedVariableConfiguration
    { _udvcReportName = Nothing
    , _udvcDataType = Nothing
    , _udvcVariableType = Nothing
    }

-- | User-friendly name for the variable which will appear in reports. This
-- is a required field, must be less than 64 characters long, and cannot
-- contain the following characters: \"\"\<>\".
udvcReportName :: Lens' UserDefinedVariableConfiguration (Maybe Text)
udvcReportName
  = lens _udvcReportName
      (\ s a -> s{_udvcReportName = a})

-- | Data type for the variable. This is a required field.
udvcDataType :: Lens' UserDefinedVariableConfiguration (Maybe UserDefinedVariableConfigurationDataType)
udvcDataType
  = lens _udvcDataType (\ s a -> s{_udvcDataType = a})

-- | Variable name in the tag. This is a required field.
udvcVariableType :: Lens' UserDefinedVariableConfiguration (Maybe UserDefinedVariableConfigurationVariableType)
udvcVariableType
  = lens _udvcVariableType
      (\ s a -> s{_udvcVariableType = a})

instance FromJSON UserDefinedVariableConfiguration
         where
        parseJSON
          = withObject "UserDefinedVariableConfiguration"
              (\ o ->
                 UserDefinedVariableConfiguration <$>
                   (o .:? "reportName") <*> (o .:? "dataType") <*>
                     (o .:? "variableType"))

instance ToJSON UserDefinedVariableConfiguration
         where
        toJSON UserDefinedVariableConfiguration{..}
          = object
              (catMaybes
                 [("reportName" .=) <$> _udvcReportName,
                  ("dataType" .=) <$> _udvcDataType,
                  ("variableType" .=) <$> _udvcVariableType])

-- | Represents a UserProfile resource.
--
-- /See:/ 'userProfile' smart constructor.
data UserProfile = UserProfile
    { _upEtag           :: !(Maybe Text)
    , _upKind           :: !Text
    , _upAccountName    :: !(Maybe Text)
    , _upProfileId      :: !(Maybe Int64)
    , _upUserName       :: !(Maybe Text)
    , _upAccountId      :: !(Maybe Int64)
    , _upSubAccountName :: !(Maybe Text)
    , _upSubAccountId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upEtag'
--
-- * 'upKind'
--
-- * 'upAccountName'
--
-- * 'upProfileId'
--
-- * 'upUserName'
--
-- * 'upAccountId'
--
-- * 'upSubAccountName'
--
-- * 'upSubAccountId'
userProfile
    :: UserProfile
userProfile =
    UserProfile
    { _upEtag = Nothing
    , _upKind = "dfareporting#userProfile"
    , _upAccountName = Nothing
    , _upProfileId = Nothing
    , _upUserName = Nothing
    , _upAccountId = Nothing
    , _upSubAccountName = Nothing
    , _upSubAccountId = Nothing
    }

-- | The eTag of this response for caching purposes.
upEtag :: Lens' UserProfile (Maybe Text)
upEtag = lens _upEtag (\ s a -> s{_upEtag = a})

-- | The kind of resource this is, in this case dfareporting#userProfile.
upKind :: Lens' UserProfile Text
upKind = lens _upKind (\ s a -> s{_upKind = a})

-- | The account name this profile belongs to.
upAccountName :: Lens' UserProfile (Maybe Text)
upAccountName
  = lens _upAccountName
      (\ s a -> s{_upAccountName = a})

-- | The unique ID of the user profile.
upProfileId :: Lens' UserProfile (Maybe Int64)
upProfileId
  = lens _upProfileId (\ s a -> s{_upProfileId = a})

-- | The user name.
upUserName :: Lens' UserProfile (Maybe Text)
upUserName
  = lens _upUserName (\ s a -> s{_upUserName = a})

-- | The account ID to which this profile belongs.
upAccountId :: Lens' UserProfile (Maybe Int64)
upAccountId
  = lens _upAccountId (\ s a -> s{_upAccountId = a})

-- | The sub account name this profile belongs to if applicable.
upSubAccountName :: Lens' UserProfile (Maybe Text)
upSubAccountName
  = lens _upSubAccountName
      (\ s a -> s{_upSubAccountName = a})

-- | The sub account ID this profile belongs to if applicable.
upSubAccountId :: Lens' UserProfile (Maybe Int64)
upSubAccountId
  = lens _upSubAccountId
      (\ s a -> s{_upSubAccountId = a})

instance FromJSON UserProfile where
        parseJSON
          = withObject "UserProfile"
              (\ o ->
                 UserProfile <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "dfareporting#userProfile")
                     <*> (o .:? "accountName")
                     <*> (o .:? "profileId")
                     <*> (o .:? "userName")
                     <*> (o .:? "accountId")
                     <*> (o .:? "subAccountName")
                     <*> (o .:? "subAccountId"))

instance ToJSON UserProfile where
        toJSON UserProfile{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _upEtag, Just ("kind" .= _upKind),
                  ("accountName" .=) <$> _upAccountName,
                  ("profileId" .=) <$> _upProfileId,
                  ("userName" .=) <$> _upUserName,
                  ("accountId" .=) <$> _upAccountId,
                  ("subAccountName" .=) <$> _upSubAccountName,
                  ("subAccountId" .=) <$> _upSubAccountId])

-- | Represents the list of user profiles.
--
-- /See:/ 'userProfileList' smart constructor.
data UserProfileList = UserProfileList
    { _uplEtag  :: !(Maybe Text)
    , _uplKind  :: !Text
    , _uplItems :: !(Maybe [Maybe UserProfile])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfileList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplEtag'
--
-- * 'uplKind'
--
-- * 'uplItems'
userProfileList
    :: UserProfileList
userProfileList =
    UserProfileList
    { _uplEtag = Nothing
    , _uplKind = "dfareporting#userProfileList"
    , _uplItems = Nothing
    }

-- | The eTag of this response for caching purposes.
uplEtag :: Lens' UserProfileList (Maybe Text)
uplEtag = lens _uplEtag (\ s a -> s{_uplEtag = a})

-- | The kind of list this is, in this case dfareporting#userProfileList.
uplKind :: Lens' UserProfileList Text
uplKind = lens _uplKind (\ s a -> s{_uplKind = a})

-- | The user profiles returned in this response.
uplItems :: Lens' UserProfileList [Maybe UserProfile]
uplItems
  = lens _uplItems (\ s a -> s{_uplItems = a}) .
      _Default
      . _Coerce

instance FromJSON UserProfileList where
        parseJSON
          = withObject "UserProfileList"
              (\ o ->
                 UserProfileList <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "dfareporting#userProfileList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON UserProfileList where
        toJSON UserProfileList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uplEtag, Just ("kind" .= _uplKind),
                  ("items" .=) <$> _uplItems])

-- | Contains properties of auser role, which is used to manage user access.
--
-- /See:/ 'userRole' smart constructor.
data UserRole = UserRole
    { _urParentUserRoleId :: !(Maybe Int64)
    , _urKind             :: !Text
    , _urDefaultUserRole  :: !(Maybe Bool)
    , _urAccountId        :: !(Maybe Int64)
    , _urName             :: !(Maybe Text)
    , _urId               :: !(Maybe Int64)
    , _urPermissions      :: !(Maybe [Maybe UserRolePermission])
    , _urSubaccountId     :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urParentUserRoleId'
--
-- * 'urKind'
--
-- * 'urDefaultUserRole'
--
-- * 'urAccountId'
--
-- * 'urName'
--
-- * 'urId'
--
-- * 'urPermissions'
--
-- * 'urSubaccountId'
userRole
    :: UserRole
userRole =
    UserRole
    { _urParentUserRoleId = Nothing
    , _urKind = "dfareporting#userRole"
    , _urDefaultUserRole = Nothing
    , _urAccountId = Nothing
    , _urName = Nothing
    , _urId = Nothing
    , _urPermissions = Nothing
    , _urSubaccountId = Nothing
    }

-- | ID of the user role that this user role is based on or copied from. This
-- is a required field.
urParentUserRoleId :: Lens' UserRole (Maybe Int64)
urParentUserRoleId
  = lens _urParentUserRoleId
      (\ s a -> s{_urParentUserRoleId = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#userRole\".
urKind :: Lens' UserRole Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | Whether this is a default user role. Default user roles are created by
-- the system for the account\/subaccount and cannot be modified or
-- deleted. Each default user role comes with a basic set of preassigned
-- permissions.
urDefaultUserRole :: Lens' UserRole (Maybe Bool)
urDefaultUserRole
  = lens _urDefaultUserRole
      (\ s a -> s{_urDefaultUserRole = a})

-- | Account ID of this user role. This is a read-only field that can be left
-- blank.
urAccountId :: Lens' UserRole (Maybe Int64)
urAccountId
  = lens _urAccountId (\ s a -> s{_urAccountId = a})

-- | Name of this user role. This is a required field. Must be less than 256
-- characters long. If this user role is under a subaccount, the name must
-- be unique among sites of the same subaccount. Otherwise, this user role
-- is a top-level user role, and the name must be unique among top-level
-- user roles of the same account.
urName :: Lens' UserRole (Maybe Text)
urName = lens _urName (\ s a -> s{_urName = a})

-- | ID of this user role. This is a read-only, auto-generated field.
urId :: Lens' UserRole (Maybe Int64)
urId = lens _urId (\ s a -> s{_urId = a})

-- | List of permissions associated with this user role.
urPermissions :: Lens' UserRole [Maybe UserRolePermission]
urPermissions
  = lens _urPermissions
      (\ s a -> s{_urPermissions = a})
      . _Default
      . _Coerce

-- | Subaccount ID of this user role. This is a read-only field that can be
-- left blank.
urSubaccountId :: Lens' UserRole (Maybe Int64)
urSubaccountId
  = lens _urSubaccountId
      (\ s a -> s{_urSubaccountId = a})

instance FromJSON UserRole where
        parseJSON
          = withObject "UserRole"
              (\ o ->
                 UserRole <$>
                   (o .:? "parentUserRoleId") <*>
                     (o .:? "kind" .!= "dfareporting#userRole")
                     <*> (o .:? "defaultUserRole")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "permissions" .!= mempty)
                     <*> (o .:? "subaccountId"))

instance ToJSON UserRole where
        toJSON UserRole{..}
          = object
              (catMaybes
                 [("parentUserRoleId" .=) <$> _urParentUserRoleId,
                  Just ("kind" .= _urKind),
                  ("defaultUserRole" .=) <$> _urDefaultUserRole,
                  ("accountId" .=) <$> _urAccountId,
                  ("name" .=) <$> _urName, ("id" .=) <$> _urId,
                  ("permissions" .=) <$> _urPermissions,
                  ("subaccountId" .=) <$> _urSubaccountId])

-- | Contains properties of a user role permission.
--
-- /See:/ 'userRolePermission' smart constructor.
data UserRolePermission = UserRolePermission
    { _urpKind              :: !Text
    , _urpAvailability      :: !(Maybe UserRolePermissionAvailability)
    , _urpName              :: !(Maybe Text)
    , _urpId                :: !(Maybe Int64)
    , _urpPermissionGroupId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpKind'
--
-- * 'urpAvailability'
--
-- * 'urpName'
--
-- * 'urpId'
--
-- * 'urpPermissionGroupId'
userRolePermission
    :: UserRolePermission
userRolePermission =
    UserRolePermission
    { _urpKind = "dfareporting#userRolePermission"
    , _urpAvailability = Nothing
    , _urpName = Nothing
    , _urpId = Nothing
    , _urpPermissionGroupId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#userRolePermission\".
urpKind :: Lens' UserRolePermission Text
urpKind = lens _urpKind (\ s a -> s{_urpKind = a})

-- | Levels of availability for a user role permission.
urpAvailability :: Lens' UserRolePermission (Maybe UserRolePermissionAvailability)
urpAvailability
  = lens _urpAvailability
      (\ s a -> s{_urpAvailability = a})

-- | Name of this user role permission.
urpName :: Lens' UserRolePermission (Maybe Text)
urpName = lens _urpName (\ s a -> s{_urpName = a})

-- | ID of this user role permission.
urpId :: Lens' UserRolePermission (Maybe Int64)
urpId = lens _urpId (\ s a -> s{_urpId = a})

-- | ID of the permission group that this user role permission belongs to.
urpPermissionGroupId :: Lens' UserRolePermission (Maybe Int64)
urpPermissionGroupId
  = lens _urpPermissionGroupId
      (\ s a -> s{_urpPermissionGroupId = a})

instance FromJSON UserRolePermission where
        parseJSON
          = withObject "UserRolePermission"
              (\ o ->
                 UserRolePermission <$>
                   (o .:? "kind" .!= "dfareporting#userRolePermission")
                     <*> (o .:? "availability")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "permissionGroupId"))

instance ToJSON UserRolePermission where
        toJSON UserRolePermission{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urpKind),
                  ("availability" .=) <$> _urpAvailability,
                  ("name" .=) <$> _urpName, ("id" .=) <$> _urpId,
                  ("permissionGroupId" .=) <$> _urpPermissionGroupId])

-- | Represents a grouping of related user role permissions.
--
-- /See:/ 'userRolePermissionGroup' smart constructor.
data UserRolePermissionGroup = UserRolePermissionGroup
    { _urpgKind :: !Text
    , _urpgName :: !(Maybe Text)
    , _urpgId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpgKind'
--
-- * 'urpgName'
--
-- * 'urpgId'
userRolePermissionGroup
    :: UserRolePermissionGroup
userRolePermissionGroup =
    UserRolePermissionGroup
    { _urpgKind = "dfareporting#userRolePermissionGroup"
    , _urpgName = Nothing
    , _urpgId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#userRolePermissionGroup\".
urpgKind :: Lens' UserRolePermissionGroup Text
urpgKind = lens _urpgKind (\ s a -> s{_urpgKind = a})

-- | Name of this user role permission group.
urpgName :: Lens' UserRolePermissionGroup (Maybe Text)
urpgName = lens _urpgName (\ s a -> s{_urpgName = a})

-- | ID of this user role permission.
urpgId :: Lens' UserRolePermissionGroup (Maybe Int64)
urpgId = lens _urpgId (\ s a -> s{_urpgId = a})

instance FromJSON UserRolePermissionGroup where
        parseJSON
          = withObject "UserRolePermissionGroup"
              (\ o ->
                 UserRolePermissionGroup <$>
                   (o .:? "kind" .!=
                      "dfareporting#userRolePermissionGroup")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON UserRolePermissionGroup where
        toJSON UserRolePermissionGroup{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urpgKind),
                  ("name" .=) <$> _urpgName, ("id" .=) <$> _urpgId])

-- | User Role Permission Group List Response
--
-- /See:/ 'userRolePermissionGroupsListResponse' smart constructor.
data UserRolePermissionGroupsListResponse = UserRolePermissionGroupsListResponse
    { _urpglrUserRolePermissionGroups :: !(Maybe [Maybe UserRolePermissionGroup])
    , _urpglrKind                     :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroupsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpglrUserRolePermissionGroups'
--
-- * 'urpglrKind'
userRolePermissionGroupsListResponse
    :: UserRolePermissionGroupsListResponse
userRolePermissionGroupsListResponse =
    UserRolePermissionGroupsListResponse
    { _urpglrUserRolePermissionGroups = Nothing
    , _urpglrKind = "dfareporting#userRolePermissionGroupsListResponse"
    }

-- | User role permission group collection.
urpglrUserRolePermissionGroups :: Lens' UserRolePermissionGroupsListResponse [Maybe UserRolePermissionGroup]
urpglrUserRolePermissionGroups
  = lens _urpglrUserRolePermissionGroups
      (\ s a -> s{_urpglrUserRolePermissionGroups = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#userRolePermissionGroupsListResponse\".
urpglrKind :: Lens' UserRolePermissionGroupsListResponse Text
urpglrKind
  = lens _urpglrKind (\ s a -> s{_urpglrKind = a})

instance FromJSON
         UserRolePermissionGroupsListResponse where
        parseJSON
          = withObject "UserRolePermissionGroupsListResponse"
              (\ o ->
                 UserRolePermissionGroupsListResponse <$>
                   (o .:? "userRolePermissionGroups" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dfareporting#userRolePermissionGroupsListResponse"))

instance ToJSON UserRolePermissionGroupsListResponse
         where
        toJSON UserRolePermissionGroupsListResponse{..}
          = object
              (catMaybes
                 [("userRolePermissionGroups" .=) <$>
                    _urpglrUserRolePermissionGroups,
                  Just ("kind" .= _urpglrKind)])

-- | User Role Permission List Response
--
-- /See:/ 'userRolePermissionsListResponse' smart constructor.
data UserRolePermissionsListResponse = UserRolePermissionsListResponse
    { _urplrKind                :: !Text
    , _urplrUserRolePermissions :: !(Maybe [Maybe UserRolePermission])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urplrKind'
--
-- * 'urplrUserRolePermissions'
userRolePermissionsListResponse
    :: UserRolePermissionsListResponse
userRolePermissionsListResponse =
    UserRolePermissionsListResponse
    { _urplrKind = "dfareporting#userRolePermissionsListResponse"
    , _urplrUserRolePermissions = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#userRolePermissionsListResponse\".
urplrKind :: Lens' UserRolePermissionsListResponse Text
urplrKind
  = lens _urplrKind (\ s a -> s{_urplrKind = a})

-- | User role permission collection.
urplrUserRolePermissions :: Lens' UserRolePermissionsListResponse [Maybe UserRolePermission]
urplrUserRolePermissions
  = lens _urplrUserRolePermissions
      (\ s a -> s{_urplrUserRolePermissions = a})
      . _Default
      . _Coerce

instance FromJSON UserRolePermissionsListResponse
         where
        parseJSON
          = withObject "UserRolePermissionsListResponse"
              (\ o ->
                 UserRolePermissionsListResponse <$>
                   (o .:? "kind" .!=
                      "dfareporting#userRolePermissionsListResponse")
                     <*> (o .:? "userRolePermissions" .!= mempty))

instance ToJSON UserRolePermissionsListResponse where
        toJSON UserRolePermissionsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urplrKind),
                  ("userRolePermissions" .=) <$>
                    _urplrUserRolePermissions])

-- | User Role List Response
--
-- /See:/ 'userRolesListResponse' smart constructor.
data UserRolesListResponse = UserRolesListResponse
    { _urlrNextPageToken :: !(Maybe Text)
    , _urlrKind          :: !Text
    , _urlrUserRoles     :: !(Maybe [Maybe UserRole])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlrNextPageToken'
--
-- * 'urlrKind'
--
-- * 'urlrUserRoles'
userRolesListResponse
    :: UserRolesListResponse
userRolesListResponse =
    UserRolesListResponse
    { _urlrNextPageToken = Nothing
    , _urlrKind = "dfareporting#userRolesListResponse"
    , _urlrUserRoles = Nothing
    }

-- | Pagination token to be used for the next list operation.
urlrNextPageToken :: Lens' UserRolesListResponse (Maybe Text)
urlrNextPageToken
  = lens _urlrNextPageToken
      (\ s a -> s{_urlrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dfareporting#userRolesListResponse\".
urlrKind :: Lens' UserRolesListResponse Text
urlrKind = lens _urlrKind (\ s a -> s{_urlrKind = a})

-- | User role collection.
urlrUserRoles :: Lens' UserRolesListResponse [Maybe UserRole]
urlrUserRoles
  = lens _urlrUserRoles
      (\ s a -> s{_urlrUserRoles = a})
      . _Default
      . _Coerce

instance FromJSON UserRolesListResponse where
        parseJSON
          = withObject "UserRolesListResponse"
              (\ o ->
                 UserRolesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dfareporting#userRolesListResponse")
                     <*> (o .:? "userRoles" .!= mempty))

instance ToJSON UserRolesListResponse where
        toJSON UserRolesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _urlrNextPageToken,
                  Just ("kind" .= _urlrKind),
                  ("userRoles" .=) <$> _urlrUserRoles])
