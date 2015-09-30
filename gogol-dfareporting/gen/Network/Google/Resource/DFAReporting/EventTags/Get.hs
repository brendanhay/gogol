{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one event tag by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingEventTagsGet@.
module DFAReporting.EventTags.Get
    (
    -- * REST Resource
      EventTagsGetAPI

    -- * Creating a Request
    , eventTagsGet
    , EventTagsGet

    -- * Request Lenses
    , etgQuotaUser
    , etgPrettyPrint
    , etgUserIp
    , etgProfileId
    , etgKey
    , etgId
    , etgOauthToken
    , etgFields
    , etgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsGet@ which the
-- 'EventTagsGet' request conforms to.
type EventTagsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           Capture "id" Int64 :> Get '[JSON] EventTag

-- | Gets one event tag by ID.
--
-- /See:/ 'eventTagsGet' smart constructor.
data EventTagsGet = EventTagsGet
    { _etgQuotaUser   :: !(Maybe Text)
    , _etgPrettyPrint :: !Bool
    , _etgUserIp      :: !(Maybe Text)
    , _etgProfileId   :: !Int64
    , _etgKey         :: !(Maybe Text)
    , _etgId          :: !Int64
    , _etgOauthToken  :: !(Maybe Text)
    , _etgFields      :: !(Maybe Text)
    , _etgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgQuotaUser'
--
-- * 'etgPrettyPrint'
--
-- * 'etgUserIp'
--
-- * 'etgProfileId'
--
-- * 'etgKey'
--
-- * 'etgId'
--
-- * 'etgOauthToken'
--
-- * 'etgFields'
--
-- * 'etgAlt'
eventTagsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> EventTagsGet
eventTagsGet pEtgProfileId_ pEtgId_ =
    EventTagsGet
    { _etgQuotaUser = Nothing
    , _etgPrettyPrint = True
    , _etgUserIp = Nothing
    , _etgProfileId = pEtgProfileId_
    , _etgKey = Nothing
    , _etgId = pEtgId_
    , _etgOauthToken = Nothing
    , _etgFields = Nothing
    , _etgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etgQuotaUser :: Lens' EventTagsGet' (Maybe Text)
etgQuotaUser
  = lens _etgQuotaUser (\ s a -> s{_etgQuotaUser = a})

-- | Returns response with indentations and line breaks.
etgPrettyPrint :: Lens' EventTagsGet' Bool
etgPrettyPrint
  = lens _etgPrettyPrint
      (\ s a -> s{_etgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etgUserIp :: Lens' EventTagsGet' (Maybe Text)
etgUserIp
  = lens _etgUserIp (\ s a -> s{_etgUserIp = a})

-- | User profile ID associated with this request.
etgProfileId :: Lens' EventTagsGet' Int64
etgProfileId
  = lens _etgProfileId (\ s a -> s{_etgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgKey :: Lens' EventTagsGet' (Maybe Text)
etgKey = lens _etgKey (\ s a -> s{_etgKey = a})

-- | Event tag ID.
etgId :: Lens' EventTagsGet' Int64
etgId = lens _etgId (\ s a -> s{_etgId = a})

-- | OAuth 2.0 token for the current user.
etgOauthToken :: Lens' EventTagsGet' (Maybe Text)
etgOauthToken
  = lens _etgOauthToken
      (\ s a -> s{_etgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
etgFields :: Lens' EventTagsGet' (Maybe Text)
etgFields
  = lens _etgFields (\ s a -> s{_etgFields = a})

-- | Data format for the response.
etgAlt :: Lens' EventTagsGet' Text
etgAlt = lens _etgAlt (\ s a -> s{_etgAlt = a})

instance GoogleRequest EventTagsGet' where
        type Rs EventTagsGet' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsGet{..}
          = go _etgQuotaUser _etgPrettyPrint _etgUserIp
              _etgProfileId
              _etgKey
              _etgId
              _etgOauthToken
              _etgFields
              _etgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventTagsGetAPI) r
                      u
