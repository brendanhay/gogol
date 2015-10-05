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
    , etiUserIP
    , etiProFileId
    , etiPayload
    , etiKey
    , etiOAuthToken
    , etiFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EventTag :> Post '[JSON] EventTag

-- | Inserts a new event tag.
--
-- /See:/ 'eventTagsInsert'' smart constructor.
data EventTagsInsert' = EventTagsInsert'
    { _etiQuotaUser   :: !(Maybe Text)
    , _etiPrettyPrint :: !Bool
    , _etiUserIP      :: !(Maybe Text)
    , _etiProFileId   :: !Int64
    , _etiPayload     :: !EventTag
    , _etiKey         :: !(Maybe Key)
    , _etiOAuthToken  :: !(Maybe OAuthToken)
    , _etiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etiQuotaUser'
--
-- * 'etiPrettyPrint'
--
-- * 'etiUserIP'
--
-- * 'etiProFileId'
--
-- * 'etiPayload'
--
-- * 'etiKey'
--
-- * 'etiOAuthToken'
--
-- * 'etiFields'
eventTagsInsert'
    :: Int64 -- ^ 'profileId'
    -> EventTag -- ^ 'payload'
    -> EventTagsInsert'
eventTagsInsert' pEtiProFileId_ pEtiPayload_ =
    EventTagsInsert'
    { _etiQuotaUser = Nothing
    , _etiPrettyPrint = True
    , _etiUserIP = Nothing
    , _etiProFileId = pEtiProFileId_
    , _etiPayload = pEtiPayload_
    , _etiKey = Nothing
    , _etiOAuthToken = Nothing
    , _etiFields = Nothing
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
etiUserIP :: Lens' EventTagsInsert' (Maybe Text)
etiUserIP
  = lens _etiUserIP (\ s a -> s{_etiUserIP = a})

-- | User profile ID associated with this request.
etiProFileId :: Lens' EventTagsInsert' Int64
etiProFileId
  = lens _etiProFileId (\ s a -> s{_etiProFileId = a})

-- | Multipart request metadata.
etiPayload :: Lens' EventTagsInsert' EventTag
etiPayload
  = lens _etiPayload (\ s a -> s{_etiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etiKey :: Lens' EventTagsInsert' (Maybe Key)
etiKey = lens _etiKey (\ s a -> s{_etiKey = a})

-- | OAuth 2.0 token for the current user.
etiOAuthToken :: Lens' EventTagsInsert' (Maybe OAuthToken)
etiOAuthToken
  = lens _etiOAuthToken
      (\ s a -> s{_etiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
etiFields :: Lens' EventTagsInsert' (Maybe Text)
etiFields
  = lens _etiFields (\ s a -> s{_etiFields = a})

instance GoogleAuth EventTagsInsert' where
        authKey = etiKey . _Just
        authToken = etiOAuthToken . _Just

instance GoogleRequest EventTagsInsert' where
        type Rs EventTagsInsert' = EventTag
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsInsert'{..}
          = go _etiProFileId _etiQuotaUser
              (Just _etiPrettyPrint)
              _etiUserIP
              _etiFields
              _etiKey
              _etiOAuthToken
              (Just AltJSON)
              _etiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventTagsInsertResource)
                      r
                      u
