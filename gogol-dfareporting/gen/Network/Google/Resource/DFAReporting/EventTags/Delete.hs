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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingEventTagsDelete@.
module Network.Google.Resource.DFAReporting.EventTags.Delete
    (
    -- * REST Resource
      EventTagsDeleteResource

    -- * Creating a Request
    , eventTagsDelete'
    , EventTagsDelete'

    -- * Request Lenses
    , etdQuotaUser
    , etdPrettyPrint
    , etdUserIp
    , etdProfileId
    , etdKey
    , etdId
    , etdOauthToken
    , etdFields
    , etdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsDelete@ which the
-- 'EventTagsDelete'' request conforms to.
type EventTagsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing event tag.
--
-- /See:/ 'eventTagsDelete'' smart constructor.
data EventTagsDelete' = EventTagsDelete'
    { _etdQuotaUser   :: !(Maybe Text)
    , _etdPrettyPrint :: !Bool
    , _etdUserIp      :: !(Maybe Text)
    , _etdProfileId   :: !Int64
    , _etdKey         :: !(Maybe Text)
    , _etdId          :: !Int64
    , _etdOauthToken  :: !(Maybe Text)
    , _etdFields      :: !(Maybe Text)
    , _etdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etdQuotaUser'
--
-- * 'etdPrettyPrint'
--
-- * 'etdUserIp'
--
-- * 'etdProfileId'
--
-- * 'etdKey'
--
-- * 'etdId'
--
-- * 'etdOauthToken'
--
-- * 'etdFields'
--
-- * 'etdAlt'
eventTagsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> EventTagsDelete'
eventTagsDelete' pEtdProfileId_ pEtdId_ =
    EventTagsDelete'
    { _etdQuotaUser = Nothing
    , _etdPrettyPrint = True
    , _etdUserIp = Nothing
    , _etdProfileId = pEtdProfileId_
    , _etdKey = Nothing
    , _etdId = pEtdId_
    , _etdOauthToken = Nothing
    , _etdFields = Nothing
    , _etdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etdQuotaUser :: Lens' EventTagsDelete' (Maybe Text)
etdQuotaUser
  = lens _etdQuotaUser (\ s a -> s{_etdQuotaUser = a})

-- | Returns response with indentations and line breaks.
etdPrettyPrint :: Lens' EventTagsDelete' Bool
etdPrettyPrint
  = lens _etdPrettyPrint
      (\ s a -> s{_etdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etdUserIp :: Lens' EventTagsDelete' (Maybe Text)
etdUserIp
  = lens _etdUserIp (\ s a -> s{_etdUserIp = a})

-- | User profile ID associated with this request.
etdProfileId :: Lens' EventTagsDelete' Int64
etdProfileId
  = lens _etdProfileId (\ s a -> s{_etdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etdKey :: Lens' EventTagsDelete' (Maybe Text)
etdKey = lens _etdKey (\ s a -> s{_etdKey = a})

-- | Event tag ID.
etdId :: Lens' EventTagsDelete' Int64
etdId = lens _etdId (\ s a -> s{_etdId = a})

-- | OAuth 2.0 token for the current user.
etdOauthToken :: Lens' EventTagsDelete' (Maybe Text)
etdOauthToken
  = lens _etdOauthToken
      (\ s a -> s{_etdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
etdFields :: Lens' EventTagsDelete' (Maybe Text)
etdFields
  = lens _etdFields (\ s a -> s{_etdFields = a})

-- | Data format for the response.
etdAlt :: Lens' EventTagsDelete' Alt
etdAlt = lens _etdAlt (\ s a -> s{_etdAlt = a})

instance GoogleRequest EventTagsDelete' where
        type Rs EventTagsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsDelete'{..}
          = go _etdQuotaUser (Just _etdPrettyPrint) _etdUserIp
              _etdProfileId
              _etdKey
              _etdId
              _etdOauthToken
              _etdFields
              (Just _etdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsDeleteResource)
                      r
                      u
