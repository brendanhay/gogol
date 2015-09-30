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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingEventTagsUpdate@.
module Network.Google.Resource.DFAReporting.EventTags.Update
    (
    -- * REST Resource
      EventTagsUpdateResource

    -- * Creating a Request
    , eventTagsUpdate'
    , EventTagsUpdate'

    -- * Request Lenses
    , etuQuotaUser
    , etuPrettyPrint
    , etuUserIp
    , etuProfileId
    , etuKey
    , etuOauthToken
    , etuFields
    , etuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsUpdate@ which the
-- 'EventTagsUpdate'' request conforms to.
type EventTagsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] EventTag

-- | Updates an existing event tag.
--
-- /See:/ 'eventTagsUpdate'' smart constructor.
data EventTagsUpdate' = EventTagsUpdate'
    { _etuQuotaUser   :: !(Maybe Text)
    , _etuPrettyPrint :: !Bool
    , _etuUserIp      :: !(Maybe Text)
    , _etuProfileId   :: !Int64
    , _etuKey         :: !(Maybe Text)
    , _etuOauthToken  :: !(Maybe Text)
    , _etuFields      :: !(Maybe Text)
    , _etuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuQuotaUser'
--
-- * 'etuPrettyPrint'
--
-- * 'etuUserIp'
--
-- * 'etuProfileId'
--
-- * 'etuKey'
--
-- * 'etuOauthToken'
--
-- * 'etuFields'
--
-- * 'etuAlt'
eventTagsUpdate'
    :: Int64 -- ^ 'profileId'
    -> EventTagsUpdate'
eventTagsUpdate' pEtuProfileId_ =
    EventTagsUpdate'
    { _etuQuotaUser = Nothing
    , _etuPrettyPrint = True
    , _etuUserIp = Nothing
    , _etuProfileId = pEtuProfileId_
    , _etuKey = Nothing
    , _etuOauthToken = Nothing
    , _etuFields = Nothing
    , _etuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etuQuotaUser :: Lens' EventTagsUpdate' (Maybe Text)
etuQuotaUser
  = lens _etuQuotaUser (\ s a -> s{_etuQuotaUser = a})

-- | Returns response with indentations and line breaks.
etuPrettyPrint :: Lens' EventTagsUpdate' Bool
etuPrettyPrint
  = lens _etuPrettyPrint
      (\ s a -> s{_etuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etuUserIp :: Lens' EventTagsUpdate' (Maybe Text)
etuUserIp
  = lens _etuUserIp (\ s a -> s{_etuUserIp = a})

-- | User profile ID associated with this request.
etuProfileId :: Lens' EventTagsUpdate' Int64
etuProfileId
  = lens _etuProfileId (\ s a -> s{_etuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etuKey :: Lens' EventTagsUpdate' (Maybe Text)
etuKey = lens _etuKey (\ s a -> s{_etuKey = a})

-- | OAuth 2.0 token for the current user.
etuOauthToken :: Lens' EventTagsUpdate' (Maybe Text)
etuOauthToken
  = lens _etuOauthToken
      (\ s a -> s{_etuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
etuFields :: Lens' EventTagsUpdate' (Maybe Text)
etuFields
  = lens _etuFields (\ s a -> s{_etuFields = a})

-- | Data format for the response.
etuAlt :: Lens' EventTagsUpdate' Alt
etuAlt = lens _etuAlt (\ s a -> s{_etuAlt = a})

instance GoogleRequest EventTagsUpdate' where
        type Rs EventTagsUpdate' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsUpdate'{..}
          = go _etuQuotaUser (Just _etuPrettyPrint) _etuUserIp
              _etuProfileId
              _etuKey
              _etuOauthToken
              _etuFields
              (Just _etuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsUpdateResource)
                      r
                      u
