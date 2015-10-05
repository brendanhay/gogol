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
module Network.Google.Resource.DFAReporting.EventTags.Patch
    (
    -- * REST Resource
      EventTagsPatchResource

    -- * Creating a Request
    , eventTagsPatch'
    , EventTagsPatch'

    -- * Request Lenses
    , etpQuotaUser
    , etpPrettyPrint
    , etpUserIP
    , etpProFileId
    , etpPayload
    , etpKey
    , etpId
    , etpOAuthToken
    , etpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsPatch@ which the
-- 'EventTagsPatch'' request conforms to.
type EventTagsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] EventTag :> Patch '[JSON] EventTag

-- | Updates an existing event tag. This method supports patch semantics.
--
-- /See:/ 'eventTagsPatch'' smart constructor.
data EventTagsPatch' = EventTagsPatch'
    { _etpQuotaUser   :: !(Maybe Text)
    , _etpPrettyPrint :: !Bool
    , _etpUserIP      :: !(Maybe Text)
    , _etpProFileId   :: !Int64
    , _etpPayload     :: !EventTag
    , _etpKey         :: !(Maybe Key)
    , _etpId          :: !Int64
    , _etpOAuthToken  :: !(Maybe OAuthToken)
    , _etpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpQuotaUser'
--
-- * 'etpPrettyPrint'
--
-- * 'etpUserIP'
--
-- * 'etpProFileId'
--
-- * 'etpPayload'
--
-- * 'etpKey'
--
-- * 'etpId'
--
-- * 'etpOAuthToken'
--
-- * 'etpFields'
eventTagsPatch'
    :: Int64 -- ^ 'profileId'
    -> EventTag -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> EventTagsPatch'
eventTagsPatch' pEtpProFileId_ pEtpPayload_ pEtpId_ =
    EventTagsPatch'
    { _etpQuotaUser = Nothing
    , _etpPrettyPrint = True
    , _etpUserIP = Nothing
    , _etpProFileId = pEtpProFileId_
    , _etpPayload = pEtpPayload_
    , _etpKey = Nothing
    , _etpId = pEtpId_
    , _etpOAuthToken = Nothing
    , _etpFields = Nothing
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
etpUserIP :: Lens' EventTagsPatch' (Maybe Text)
etpUserIP
  = lens _etpUserIP (\ s a -> s{_etpUserIP = a})

-- | User profile ID associated with this request.
etpProFileId :: Lens' EventTagsPatch' Int64
etpProFileId
  = lens _etpProFileId (\ s a -> s{_etpProFileId = a})

-- | Multipart request metadata.
etpPayload :: Lens' EventTagsPatch' EventTag
etpPayload
  = lens _etpPayload (\ s a -> s{_etpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etpKey :: Lens' EventTagsPatch' (Maybe Key)
etpKey = lens _etpKey (\ s a -> s{_etpKey = a})

-- | Event tag ID.
etpId :: Lens' EventTagsPatch' Int64
etpId = lens _etpId (\ s a -> s{_etpId = a})

-- | OAuth 2.0 token for the current user.
etpOAuthToken :: Lens' EventTagsPatch' (Maybe OAuthToken)
etpOAuthToken
  = lens _etpOAuthToken
      (\ s a -> s{_etpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
etpFields :: Lens' EventTagsPatch' (Maybe Text)
etpFields
  = lens _etpFields (\ s a -> s{_etpFields = a})

instance GoogleAuth EventTagsPatch' where
        authKey = etpKey . _Just
        authToken = etpOAuthToken . _Just

instance GoogleRequest EventTagsPatch' where
        type Rs EventTagsPatch' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsPatch'{..}
          = go _etpProFileId (Just _etpId) _etpQuotaUser
              (Just _etpPrettyPrint)
              _etpUserIP
              _etpFields
              _etpKey
              _etpOAuthToken
              (Just AltJSON)
              _etpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsPatchResource)
                      r
                      u
