{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingEventTagsInsert@.
module Network.Google.Resource.DFAReporting.EventTags.Insert
    (
    -- * REST Resource
      EventTagsInsertResource

    -- * Creating a Request
    , eventTagsInsert'
    , EventTagsInsert'

    -- * Request Lenses
    , etiQuotaUser
    , etiPrettyPrint
    , etiUserIp
    , etiProfileId
    , etiKey
    , etiOauthToken
    , etiFields
    , etiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsInsert@ which the
-- 'EventTagsInsert'' request conforms to.
type EventTagsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] EventTag

-- | Inserts a new event tag.
--
-- /See:/ 'eventTagsInsert'' smart constructor.
data EventTagsInsert' = EventTagsInsert'
    { _etiQuotaUser   :: !(Maybe Text)
    , _etiPrettyPrint :: !Bool
    , _etiUserIp      :: !(Maybe Text)
    , _etiProfileId   :: !Int64
    , _etiKey         :: !(Maybe Text)
    , _etiOauthToken  :: !(Maybe Text)
    , _etiFields      :: !(Maybe Text)
    , _etiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etiQuotaUser'
--
-- * 'etiPrettyPrint'
--
-- * 'etiUserIp'
--
-- * 'etiProfileId'
--
-- * 'etiKey'
--
-- * 'etiOauthToken'
--
-- * 'etiFields'
--
-- * 'etiAlt'
eventTagsInsert'
    :: Int64 -- ^ 'profileId'
    -> EventTagsInsert'
eventTagsInsert' pEtiProfileId_ =
    EventTagsInsert'
    { _etiQuotaUser = Nothing
    , _etiPrettyPrint = True
    , _etiUserIp = Nothing
    , _etiProfileId = pEtiProfileId_
    , _etiKey = Nothing
    , _etiOauthToken = Nothing
    , _etiFields = Nothing
    , _etiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etiQuotaUser :: Lens' EventTagsInsert' (Maybe Text)
etiQuotaUser
  = lens _etiQuotaUser (\ s a -> s{_etiQuotaUser = a})

-- | Returns response with indentations and line breaks.
etiPrettyPrint :: Lens' EventTagsInsert' Bool
etiPrettyPrint
  = lens _etiPrettyPrint
      (\ s a -> s{_etiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etiUserIp :: Lens' EventTagsInsert' (Maybe Text)
etiUserIp
  = lens _etiUserIp (\ s a -> s{_etiUserIp = a})

-- | User profile ID associated with this request.
etiProfileId :: Lens' EventTagsInsert' Int64
etiProfileId
  = lens _etiProfileId (\ s a -> s{_etiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etiKey :: Lens' EventTagsInsert' (Maybe Text)
etiKey = lens _etiKey (\ s a -> s{_etiKey = a})

-- | OAuth 2.0 token for the current user.
etiOauthToken :: Lens' EventTagsInsert' (Maybe Text)
etiOauthToken
  = lens _etiOauthToken
      (\ s a -> s{_etiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
etiFields :: Lens' EventTagsInsert' (Maybe Text)
etiFields
  = lens _etiFields (\ s a -> s{_etiFields = a})

-- | Data format for the response.
etiAlt :: Lens' EventTagsInsert' Alt
etiAlt = lens _etiAlt (\ s a -> s{_etiAlt = a})

instance GoogleRequest EventTagsInsert' where
        type Rs EventTagsInsert' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsInsert'{..}
          = go _etiQuotaUser (Just _etiPrettyPrint) _etiUserIp
              _etiProfileId
              _etiKey
              _etiOauthToken
              _etiFields
              (Just _etiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsInsertResource)
                      r
                      u
