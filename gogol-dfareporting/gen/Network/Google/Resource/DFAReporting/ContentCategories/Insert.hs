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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesInsert@.
module Network.Google.Resource.DFAReporting.ContentCategories.Insert
    (
    -- * REST Resource
      ContentCategoriesInsertResource

    -- * Creating a Request
    , contentCategoriesInsert'
    , ContentCategoriesInsert'

    -- * Request Lenses
    , cciQuotaUser
    , cciPrettyPrint
    , cciUserIP
    , cciProFileId
    , cciPayload
    , cciKey
    , cciOAuthToken
    , cciFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesInsert@ which the
-- 'ContentCategoriesInsert'' request conforms to.
type ContentCategoriesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ContentCategory :>
                           Post '[JSON] ContentCategory

-- | Inserts a new content category.
--
-- /See:/ 'contentCategoriesInsert'' smart constructor.
data ContentCategoriesInsert' = ContentCategoriesInsert'
    { _cciQuotaUser   :: !(Maybe Text)
    , _cciPrettyPrint :: !Bool
    , _cciUserIP      :: !(Maybe Text)
    , _cciProFileId   :: !Int64
    , _cciPayload     :: !ContentCategory
    , _cciKey         :: !(Maybe Key)
    , _cciOAuthToken  :: !(Maybe OAuthToken)
    , _cciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciQuotaUser'
--
-- * 'cciPrettyPrint'
--
-- * 'cciUserIP'
--
-- * 'cciProFileId'
--
-- * 'cciPayload'
--
-- * 'cciKey'
--
-- * 'cciOAuthToken'
--
-- * 'cciFields'
contentCategoriesInsert'
    :: Int64 -- ^ 'profileId'
    -> ContentCategory -- ^ 'payload'
    -> ContentCategoriesInsert'
contentCategoriesInsert' pCciProFileId_ pCciPayload_ =
    ContentCategoriesInsert'
    { _cciQuotaUser = Nothing
    , _cciPrettyPrint = True
    , _cciUserIP = Nothing
    , _cciProFileId = pCciProFileId_
    , _cciPayload = pCciPayload_
    , _cciKey = Nothing
    , _cciOAuthToken = Nothing
    , _cciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cciQuotaUser :: Lens' ContentCategoriesInsert' (Maybe Text)
cciQuotaUser
  = lens _cciQuotaUser (\ s a -> s{_cciQuotaUser = a})

-- | Returns response with indentations and line breaks.
cciPrettyPrint :: Lens' ContentCategoriesInsert' Bool
cciPrettyPrint
  = lens _cciPrettyPrint
      (\ s a -> s{_cciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cciUserIP :: Lens' ContentCategoriesInsert' (Maybe Text)
cciUserIP
  = lens _cciUserIP (\ s a -> s{_cciUserIP = a})

-- | User profile ID associated with this request.
cciProFileId :: Lens' ContentCategoriesInsert' Int64
cciProFileId
  = lens _cciProFileId (\ s a -> s{_cciProFileId = a})

-- | Multipart request metadata.
cciPayload :: Lens' ContentCategoriesInsert' ContentCategory
cciPayload
  = lens _cciPayload (\ s a -> s{_cciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cciKey :: Lens' ContentCategoriesInsert' (Maybe Key)
cciKey = lens _cciKey (\ s a -> s{_cciKey = a})

-- | OAuth 2.0 token for the current user.
cciOAuthToken :: Lens' ContentCategoriesInsert' (Maybe OAuthToken)
cciOAuthToken
  = lens _cciOAuthToken
      (\ s a -> s{_cciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cciFields :: Lens' ContentCategoriesInsert' (Maybe Text)
cciFields
  = lens _cciFields (\ s a -> s{_cciFields = a})

instance GoogleAuth ContentCategoriesInsert' where
        authKey = cciKey . _Just
        authToken = cciOAuthToken . _Just

instance GoogleRequest ContentCategoriesInsert' where
        type Rs ContentCategoriesInsert' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesInsert'{..}
          = go _cciProFileId _cciQuotaUser
              (Just _cciPrettyPrint)
              _cciUserIP
              _cciFields
              _cciKey
              _cciOAuthToken
              (Just AltJSON)
              _cciPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesInsertResource)
                      r
                      u
