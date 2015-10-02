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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesUpdate@.
module Network.Google.Resource.DFAReporting.ContentCategories.Update
    (
    -- * REST Resource
      ContentCategoriesUpdateResource

    -- * Creating a Request
    , contentCategoriesUpdate'
    , ContentCategoriesUpdate'

    -- * Request Lenses
    , ccuQuotaUser
    , ccuPrettyPrint
    , ccuUserIP
    , ccuProfileId
    , ccuContentCategory
    , ccuKey
    , ccuOAuthToken
    , ccuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesUpdate@ which the
-- 'ContentCategoriesUpdate'' request conforms to.
type ContentCategoriesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ContentCategory :>
                           Put '[JSON] ContentCategory

-- | Updates an existing content category.
--
-- /See:/ 'contentCategoriesUpdate'' smart constructor.
data ContentCategoriesUpdate' = ContentCategoriesUpdate'
    { _ccuQuotaUser       :: !(Maybe Text)
    , _ccuPrettyPrint     :: !Bool
    , _ccuUserIP          :: !(Maybe Text)
    , _ccuProfileId       :: !Int64
    , _ccuContentCategory :: !ContentCategory
    , _ccuKey             :: !(Maybe Key)
    , _ccuOAuthToken      :: !(Maybe OAuthToken)
    , _ccuFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuQuotaUser'
--
-- * 'ccuPrettyPrint'
--
-- * 'ccuUserIP'
--
-- * 'ccuProfileId'
--
-- * 'ccuContentCategory'
--
-- * 'ccuKey'
--
-- * 'ccuOAuthToken'
--
-- * 'ccuFields'
contentCategoriesUpdate'
    :: Int64 -- ^ 'profileId'
    -> ContentCategory -- ^ 'ContentCategory'
    -> ContentCategoriesUpdate'
contentCategoriesUpdate' pCcuProfileId_ pCcuContentCategory_ =
    ContentCategoriesUpdate'
    { _ccuQuotaUser = Nothing
    , _ccuPrettyPrint = True
    , _ccuUserIP = Nothing
    , _ccuProfileId = pCcuProfileId_
    , _ccuContentCategory = pCcuContentCategory_
    , _ccuKey = Nothing
    , _ccuOAuthToken = Nothing
    , _ccuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccuQuotaUser :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuQuotaUser
  = lens _ccuQuotaUser (\ s a -> s{_ccuQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccuPrettyPrint :: Lens' ContentCategoriesUpdate' Bool
ccuPrettyPrint
  = lens _ccuPrettyPrint
      (\ s a -> s{_ccuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccuUserIP :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuUserIP
  = lens _ccuUserIP (\ s a -> s{_ccuUserIP = a})

-- | User profile ID associated with this request.
ccuProfileId :: Lens' ContentCategoriesUpdate' Int64
ccuProfileId
  = lens _ccuProfileId (\ s a -> s{_ccuProfileId = a})

-- | Multipart request metadata.
ccuContentCategory :: Lens' ContentCategoriesUpdate' ContentCategory
ccuContentCategory
  = lens _ccuContentCategory
      (\ s a -> s{_ccuContentCategory = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccuKey :: Lens' ContentCategoriesUpdate' (Maybe Key)
ccuKey = lens _ccuKey (\ s a -> s{_ccuKey = a})

-- | OAuth 2.0 token for the current user.
ccuOAuthToken :: Lens' ContentCategoriesUpdate' (Maybe OAuthToken)
ccuOAuthToken
  = lens _ccuOAuthToken
      (\ s a -> s{_ccuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccuFields :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuFields
  = lens _ccuFields (\ s a -> s{_ccuFields = a})

instance GoogleAuth ContentCategoriesUpdate' where
        authKey = ccuKey . _Just
        authToken = ccuOAuthToken . _Just

instance GoogleRequest ContentCategoriesUpdate' where
        type Rs ContentCategoriesUpdate' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesUpdate'{..}
          = go _ccuQuotaUser (Just _ccuPrettyPrint) _ccuUserIP
              _ccuProfileId
              _ccuKey
              _ccuOAuthToken
              _ccuFields
              (Just AltJSON)
              _ccuContentCategory
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesUpdateResource)
                      r
                      u
