{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing event tag. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingEventTagsPatch@.
module DFAReporting.EventTags.Patch
    (
    -- * REST Resource
      EventTagsPatchAPI

    -- * Creating a Request
    , eventTagsPatch
    , EventTagsPatch

    -- * Request Lenses
    , etpQuotaUser
    , etpPrettyPrint
    , etpUserIp
    , etpProfileId
    , etpKey
    , etpId
    , etpOauthToken
    , etpFields
    , etpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsPatch@ which the
-- 'EventTagsPatch' request conforms to.
type EventTagsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           QueryParam "id" Int64 :> Patch '[JSON] EventTag

-- | Updates an existing event tag. This method supports patch semantics.
--
-- /See:/ 'eventTagsPatch' smart constructor.
data EventTagsPatch = EventTagsPatch
    { _etpQuotaUser   :: !(Maybe Text)
    , _etpPrettyPrint :: !Bool
    , _etpUserIp      :: !(Maybe Text)
    , _etpProfileId   :: !Int64
    , _etpKey         :: !(Maybe Text)
    , _etpId          :: !Int64
    , _etpOauthToken  :: !(Maybe Text)
    , _etpFields      :: !(Maybe Text)
    , _etpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpQuotaUser'
--
-- * 'etpPrettyPrint'
--
-- * 'etpUserIp'
--
-- * 'etpProfileId'
--
-- * 'etpKey'
--
-- * 'etpId'
--
-- * 'etpOauthToken'
--
-- * 'etpFields'
--
-- * 'etpAlt'
eventTagsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> EventTagsPatch
eventTagsPatch pEtpProfileId_ pEtpId_ =
    EventTagsPatch
    { _etpQuotaUser = Nothing
    , _etpPrettyPrint = True
    , _etpUserIp = Nothing
    , _etpProfileId = pEtpProfileId_
    , _etpKey = Nothing
    , _etpId = pEtpId_
    , _etpOauthToken = Nothing
    , _etpFields = Nothing
    , _etpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etpQuotaUser :: Lens' EventTagsPatch' (Maybe Text)
etpQuotaUser
  = lens _etpQuotaUser (\ s a -> s{_etpQuotaUser = a})

-- | Returns response with indentations and line breaks.
etpPrettyPrint :: Lens' EventTagsPatch' Bool
etpPrettyPrint
  = lens _etpPrettyPrint
      (\ s a -> s{_etpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etpUserIp :: Lens' EventTagsPatch' (Maybe Text)
etpUserIp
  = lens _etpUserIp (\ s a -> s{_etpUserIp = a})

-- | User profile ID associated with this request.
etpProfileId :: Lens' EventTagsPatch' Int64
etpProfileId
  = lens _etpProfileId (\ s a -> s{_etpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etpKey :: Lens' EventTagsPatch' (Maybe Text)
etpKey = lens _etpKey (\ s a -> s{_etpKey = a})

-- | Event tag ID.
etpId :: Lens' EventTagsPatch' Int64
etpId = lens _etpId (\ s a -> s{_etpId = a})

-- | OAuth 2.0 token for the current user.
etpOauthToken :: Lens' EventTagsPatch' (Maybe Text)
etpOauthToken
  = lens _etpOauthToken
      (\ s a -> s{_etpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
etpFields :: Lens' EventTagsPatch' (Maybe Text)
etpFields
  = lens _etpFields (\ s a -> s{_etpFields = a})

-- | Data format for the response.
etpAlt :: Lens' EventTagsPatch' Text
etpAlt = lens _etpAlt (\ s a -> s{_etpAlt = a})

instance GoogleRequest EventTagsPatch' where
        type Rs EventTagsPatch' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsPatch{..}
          = go _etpQuotaUser _etpPrettyPrint _etpUserIp
              _etpProfileId
              _etpKey
              (Just _etpId)
              _etpOauthToken
              _etpFields
              _etpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventTagsPatchAPI)
                      r
                      u
