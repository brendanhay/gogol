{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.DFAReporting.EventTags.Get
    (
    -- * REST Resource
      EventTagsGetResource

    -- * Creating a Request
    , eventTagsGet'
    , EventTagsGet'

    -- * Request Lenses
    , etgQuotaUser
    , etgPrettyPrint
    , etgUserIP
    , etgProFileId
    , etgKey
    , etgId
    , etgOAuthToken
    , etgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsGet@ which the
-- 'EventTagsGet'' request conforms to.
type EventTagsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] EventTag

-- | Gets one event tag by ID.
--
-- /See:/ 'eventTagsGet'' smart constructor.
data EventTagsGet' = EventTagsGet'
    { _etgQuotaUser   :: !(Maybe Text)
    , _etgPrettyPrint :: !Bool
    , _etgUserIP      :: !(Maybe Text)
    , _etgProFileId   :: !Int64
    , _etgKey         :: !(Maybe Key)
    , _etgId          :: !Int64
    , _etgOAuthToken  :: !(Maybe OAuthToken)
    , _etgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgQuotaUser'
--
-- * 'etgPrettyPrint'
--
-- * 'etgUserIP'
--
-- * 'etgProFileId'
--
-- * 'etgKey'
--
-- * 'etgId'
--
-- * 'etgOAuthToken'
--
-- * 'etgFields'
eventTagsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> EventTagsGet'
eventTagsGet' pEtgProFileId_ pEtgId_ =
    EventTagsGet'
    { _etgQuotaUser = Nothing
    , _etgPrettyPrint = True
    , _etgUserIP = Nothing
    , _etgProFileId = pEtgProFileId_
    , _etgKey = Nothing
    , _etgId = pEtgId_
    , _etgOAuthToken = Nothing
    , _etgFields = Nothing
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
etgUserIP :: Lens' EventTagsGet' (Maybe Text)
etgUserIP
  = lens _etgUserIP (\ s a -> s{_etgUserIP = a})

-- | User profile ID associated with this request.
etgProFileId :: Lens' EventTagsGet' Int64
etgProFileId
  = lens _etgProFileId (\ s a -> s{_etgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgKey :: Lens' EventTagsGet' (Maybe Key)
etgKey = lens _etgKey (\ s a -> s{_etgKey = a})

-- | Event tag ID.
etgId :: Lens' EventTagsGet' Int64
etgId = lens _etgId (\ s a -> s{_etgId = a})

-- | OAuth 2.0 token for the current user.
etgOAuthToken :: Lens' EventTagsGet' (Maybe OAuthToken)
etgOAuthToken
  = lens _etgOAuthToken
      (\ s a -> s{_etgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
etgFields :: Lens' EventTagsGet' (Maybe Text)
etgFields
  = lens _etgFields (\ s a -> s{_etgFields = a})

instance GoogleAuth EventTagsGet' where
        authKey = etgKey . _Just
        authToken = etgOAuthToken . _Just

instance GoogleRequest EventTagsGet' where
        type Rs EventTagsGet' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsGet'{..}
          = go _etgProFileId _etgId _etgQuotaUser
              (Just _etgPrettyPrint)
              _etgUserIP
              _etgFields
              _etgKey
              _etgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsGetResource)
                      r
                      u
