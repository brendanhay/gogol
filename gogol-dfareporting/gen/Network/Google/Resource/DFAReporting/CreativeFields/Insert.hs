{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsInsert@.
module Network.Google.Resource.DFAReporting.CreativeFields.Insert
    (
    -- * REST Resource
      CreativeFieldsInsertResource

    -- * Creating a Request
    , creativeFieldsInsert'
    , CreativeFieldsInsert'

    -- * Request Lenses
    , cfiQuotaUser
    , cfiPrettyPrint
    , cfiUserIP
    , cfiProFileId
    , cfiPayload
    , cfiKey
    , cfiOAuthToken
    , cfiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsInsert@ which the
-- 'CreativeFieldsInsert'' request conforms to.
type CreativeFieldsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CreativeField :>
                           Post '[JSON] CreativeField

-- | Inserts a new creative field.
--
-- /See:/ 'creativeFieldsInsert'' smart constructor.
data CreativeFieldsInsert' = CreativeFieldsInsert'
    { _cfiQuotaUser   :: !(Maybe Text)
    , _cfiPrettyPrint :: !Bool
    , _cfiUserIP      :: !(Maybe Text)
    , _cfiProFileId   :: !Int64
    , _cfiPayload     :: !CreativeField
    , _cfiKey         :: !(Maybe Key)
    , _cfiOAuthToken  :: !(Maybe OAuthToken)
    , _cfiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfiQuotaUser'
--
-- * 'cfiPrettyPrint'
--
-- * 'cfiUserIP'
--
-- * 'cfiProFileId'
--
-- * 'cfiPayload'
--
-- * 'cfiKey'
--
-- * 'cfiOAuthToken'
--
-- * 'cfiFields'
creativeFieldsInsert'
    :: Int64 -- ^ 'profileId'
    -> CreativeField -- ^ 'payload'
    -> CreativeFieldsInsert'
creativeFieldsInsert' pCfiProFileId_ pCfiPayload_ =
    CreativeFieldsInsert'
    { _cfiQuotaUser = Nothing
    , _cfiPrettyPrint = True
    , _cfiUserIP = Nothing
    , _cfiProFileId = pCfiProFileId_
    , _cfiPayload = pCfiPayload_
    , _cfiKey = Nothing
    , _cfiOAuthToken = Nothing
    , _cfiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfiQuotaUser :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiQuotaUser
  = lens _cfiQuotaUser (\ s a -> s{_cfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfiPrettyPrint :: Lens' CreativeFieldsInsert' Bool
cfiPrettyPrint
  = lens _cfiPrettyPrint
      (\ s a -> s{_cfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfiUserIP :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiUserIP
  = lens _cfiUserIP (\ s a -> s{_cfiUserIP = a})

-- | User profile ID associated with this request.
cfiProFileId :: Lens' CreativeFieldsInsert' Int64
cfiProFileId
  = lens _cfiProFileId (\ s a -> s{_cfiProFileId = a})

-- | Multipart request metadata.
cfiPayload :: Lens' CreativeFieldsInsert' CreativeField
cfiPayload
  = lens _cfiPayload (\ s a -> s{_cfiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfiKey :: Lens' CreativeFieldsInsert' (Maybe Key)
cfiKey = lens _cfiKey (\ s a -> s{_cfiKey = a})

-- | OAuth 2.0 token for the current user.
cfiOAuthToken :: Lens' CreativeFieldsInsert' (Maybe OAuthToken)
cfiOAuthToken
  = lens _cfiOAuthToken
      (\ s a -> s{_cfiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfiFields :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiFields
  = lens _cfiFields (\ s a -> s{_cfiFields = a})

instance GoogleAuth CreativeFieldsInsert' where
        authKey = cfiKey . _Just
        authToken = cfiOAuthToken . _Just

instance GoogleRequest CreativeFieldsInsert' where
        type Rs CreativeFieldsInsert' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsInsert'{..}
          = go _cfiProFileId _cfiQuotaUser
              (Just _cfiPrettyPrint)
              _cfiUserIP
              _cfiFields
              _cfiKey
              _cfiOAuthToken
              (Just AltJSON)
              _cfiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsInsertResource)
                      r
                      u
