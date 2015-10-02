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
    , etdUserIP
    , etdProfileId
    , etdKey
    , etdId
    , etdOAuthToken
    , etdFields
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
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing event tag.
--
-- /See:/ 'eventTagsDelete'' smart constructor.
data EventTagsDelete' = EventTagsDelete'
    { _etdQuotaUser   :: !(Maybe Text)
    , _etdPrettyPrint :: !Bool
    , _etdUserIP      :: !(Maybe Text)
    , _etdProfileId   :: !Int64
    , _etdKey         :: !(Maybe Key)
    , _etdId          :: !Int64
    , _etdOAuthToken  :: !(Maybe OAuthToken)
    , _etdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etdQuotaUser'
--
-- * 'etdPrettyPrint'
--
-- * 'etdUserIP'
--
-- * 'etdProfileId'
--
-- * 'etdKey'
--
-- * 'etdId'
--
-- * 'etdOAuthToken'
--
-- * 'etdFields'
eventTagsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> EventTagsDelete'
eventTagsDelete' pEtdProfileId_ pEtdId_ =
    EventTagsDelete'
    { _etdQuotaUser = Nothing
    , _etdPrettyPrint = True
    , _etdUserIP = Nothing
    , _etdProfileId = pEtdProfileId_
    , _etdKey = Nothing
    , _etdId = pEtdId_
    , _etdOAuthToken = Nothing
    , _etdFields = Nothing
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
etdUserIP :: Lens' EventTagsDelete' (Maybe Text)
etdUserIP
  = lens _etdUserIP (\ s a -> s{_etdUserIP = a})

-- | User profile ID associated with this request.
etdProfileId :: Lens' EventTagsDelete' Int64
etdProfileId
  = lens _etdProfileId (\ s a -> s{_etdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etdKey :: Lens' EventTagsDelete' (Maybe Key)
etdKey = lens _etdKey (\ s a -> s{_etdKey = a})

-- | Event tag ID.
etdId :: Lens' EventTagsDelete' Int64
etdId = lens _etdId (\ s a -> s{_etdId = a})

-- | OAuth 2.0 token for the current user.
etdOAuthToken :: Lens' EventTagsDelete' (Maybe OAuthToken)
etdOAuthToken
  = lens _etdOAuthToken
      (\ s a -> s{_etdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
etdFields :: Lens' EventTagsDelete' (Maybe Text)
etdFields
  = lens _etdFields (\ s a -> s{_etdFields = a})

instance GoogleAuth EventTagsDelete' where
        authKey = etdKey . _Just
        authToken = etdOAuthToken . _Just

instance GoogleRequest EventTagsDelete' where
        type Rs EventTagsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsDelete'{..}
          = go _etdQuotaUser (Just _etdPrettyPrint) _etdUserIP
              _etdProfileId
              _etdKey
              _etdId
              _etdOAuthToken
              _etdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsDeleteResource)
                      r
                      u
