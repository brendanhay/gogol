{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new goal.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsInsert@.
module Network.Google.Resource.Analytics.Management.Goals.Insert
    (
    -- * REST Resource
      ManagementGoalsInsertResource

    -- * Creating a Request
    , managementGoalsInsert'
    , ManagementGoalsInsert'

    -- * Request Lenses
    , mgiQuotaUser
    , mgiPrettyPrint
    , mgiWebPropertyId
    , mgiUserIP
    , mgiProFileId
    , mgiPayload
    , mgiAccountId
    , mgiKey
    , mgiOAuthToken
    , mgiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsInsert@ method which the
-- 'ManagementGoalsInsert'' request conforms to.
type ManagementGoalsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Goal :> Post '[JSON] Goal

-- | Create a new goal.
--
-- /See:/ 'managementGoalsInsert'' smart constructor.
data ManagementGoalsInsert' = ManagementGoalsInsert'
    { _mgiQuotaUser     :: !(Maybe Text)
    , _mgiPrettyPrint   :: !Bool
    , _mgiWebPropertyId :: !Text
    , _mgiUserIP        :: !(Maybe Text)
    , _mgiProFileId     :: !Text
    , _mgiPayload       :: !Goal
    , _mgiAccountId     :: !Text
    , _mgiKey           :: !(Maybe AuthKey)
    , _mgiOAuthToken    :: !(Maybe OAuthToken)
    , _mgiFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgiQuotaUser'
--
-- * 'mgiPrettyPrint'
--
-- * 'mgiWebPropertyId'
--
-- * 'mgiUserIP'
--
-- * 'mgiProFileId'
--
-- * 'mgiPayload'
--
-- * 'mgiAccountId'
--
-- * 'mgiKey'
--
-- * 'mgiOAuthToken'
--
-- * 'mgiFields'
managementGoalsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Goal -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsInsert'
managementGoalsInsert' pMgiWebPropertyId_ pMgiProFileId_ pMgiPayload_ pMgiAccountId_ =
    ManagementGoalsInsert'
    { _mgiQuotaUser = Nothing
    , _mgiPrettyPrint = False
    , _mgiWebPropertyId = pMgiWebPropertyId_
    , _mgiUserIP = Nothing
    , _mgiProFileId = pMgiProFileId_
    , _mgiPayload = pMgiPayload_
    , _mgiAccountId = pMgiAccountId_
    , _mgiKey = Nothing
    , _mgiOAuthToken = Nothing
    , _mgiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgiQuotaUser :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiQuotaUser
  = lens _mgiQuotaUser (\ s a -> s{_mgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgiPrettyPrint :: Lens' ManagementGoalsInsert' Bool
mgiPrettyPrint
  = lens _mgiPrettyPrint
      (\ s a -> s{_mgiPrettyPrint = a})

-- | Web property ID to create the goal for.
mgiWebPropertyId :: Lens' ManagementGoalsInsert' Text
mgiWebPropertyId
  = lens _mgiWebPropertyId
      (\ s a -> s{_mgiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgiUserIP :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiUserIP
  = lens _mgiUserIP (\ s a -> s{_mgiUserIP = a})

-- | View (Profile) ID to create the goal for.
mgiProFileId :: Lens' ManagementGoalsInsert' Text
mgiProFileId
  = lens _mgiProFileId (\ s a -> s{_mgiProFileId = a})

-- | Multipart request metadata.
mgiPayload :: Lens' ManagementGoalsInsert' Goal
mgiPayload
  = lens _mgiPayload (\ s a -> s{_mgiPayload = a})

-- | Account ID to create the goal for.
mgiAccountId :: Lens' ManagementGoalsInsert' Text
mgiAccountId
  = lens _mgiAccountId (\ s a -> s{_mgiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgiKey :: Lens' ManagementGoalsInsert' (Maybe AuthKey)
mgiKey = lens _mgiKey (\ s a -> s{_mgiKey = a})

-- | OAuth 2.0 token for the current user.
mgiOAuthToken :: Lens' ManagementGoalsInsert' (Maybe OAuthToken)
mgiOAuthToken
  = lens _mgiOAuthToken
      (\ s a -> s{_mgiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgiFields :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiFields
  = lens _mgiFields (\ s a -> s{_mgiFields = a})

instance GoogleAuth ManagementGoalsInsert' where
        _AuthKey = mgiKey . _Just
        _AuthToken = mgiOAuthToken . _Just

instance GoogleRequest ManagementGoalsInsert' where
        type Rs ManagementGoalsInsert' = Goal
        request = requestWith analyticsRequest
        requestWith rq ManagementGoalsInsert'{..}
          = go _mgiAccountId _mgiWebPropertyId _mgiProFileId
              _mgiQuotaUser
              (Just _mgiPrettyPrint)
              _mgiUserIP
              _mgiFields
              _mgiKey
              _mgiOAuthToken
              (Just AltJSON)
              _mgiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementGoalsInsertResource)
                      rq
