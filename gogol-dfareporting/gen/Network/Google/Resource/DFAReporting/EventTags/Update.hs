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
    , etuUserIP
    , etuProFileId
    , etuPayload
    , etuKey
    , etuOAuthToken
    , etuFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EventTag :> Put '[JSON] EventTag

-- | Updates an existing event tag.
--
-- /See:/ 'eventTagsUpdate'' smart constructor.
data EventTagsUpdate' = EventTagsUpdate'
    { _etuQuotaUser   :: !(Maybe Text)
    , _etuPrettyPrint :: !Bool
    , _etuUserIP      :: !(Maybe Text)
    , _etuProFileId   :: !Int64
    , _etuPayload     :: !EventTag
    , _etuKey         :: !(Maybe AuthKey)
    , _etuOAuthToken  :: !(Maybe OAuthToken)
    , _etuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuQuotaUser'
--
-- * 'etuPrettyPrint'
--
-- * 'etuUserIP'
--
-- * 'etuProFileId'
--
-- * 'etuPayload'
--
-- * 'etuKey'
--
-- * 'etuOAuthToken'
--
-- * 'etuFields'
eventTagsUpdate'
    :: Int64 -- ^ 'profileId'
    -> EventTag -- ^ 'payload'
    -> EventTagsUpdate'
eventTagsUpdate' pEtuProFileId_ pEtuPayload_ =
    EventTagsUpdate'
    { _etuQuotaUser = Nothing
    , _etuPrettyPrint = True
    , _etuUserIP = Nothing
    , _etuProFileId = pEtuProFileId_
    , _etuPayload = pEtuPayload_
    , _etuKey = Nothing
    , _etuOAuthToken = Nothing
    , _etuFields = Nothing
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
etuUserIP :: Lens' EventTagsUpdate' (Maybe Text)
etuUserIP
  = lens _etuUserIP (\ s a -> s{_etuUserIP = a})

-- | User profile ID associated with this request.
etuProFileId :: Lens' EventTagsUpdate' Int64
etuProFileId
  = lens _etuProFileId (\ s a -> s{_etuProFileId = a})

-- | Multipart request metadata.
etuPayload :: Lens' EventTagsUpdate' EventTag
etuPayload
  = lens _etuPayload (\ s a -> s{_etuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etuKey :: Lens' EventTagsUpdate' (Maybe AuthKey)
etuKey = lens _etuKey (\ s a -> s{_etuKey = a})

-- | OAuth 2.0 token for the current user.
etuOAuthToken :: Lens' EventTagsUpdate' (Maybe OAuthToken)
etuOAuthToken
  = lens _etuOAuthToken
      (\ s a -> s{_etuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
etuFields :: Lens' EventTagsUpdate' (Maybe Text)
etuFields
  = lens _etuFields (\ s a -> s{_etuFields = a})

instance GoogleAuth EventTagsUpdate' where
        authKey = etuKey . _Just
        authToken = etuOAuthToken . _Just

instance GoogleRequest EventTagsUpdate' where
        type Rs EventTagsUpdate' = EventTag
        request = requestWith dFAReportingRequest
        requestWith rq EventTagsUpdate'{..}
          = go _etuProFileId _etuQuotaUser
              (Just _etuPrettyPrint)
              _etuUserIP
              _etuFields
              _etuKey
              _etuOAuthToken
              (Just AltJSON)
              _etuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy EventTagsUpdateResource)
                      rq
