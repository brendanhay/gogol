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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesPatch@.
module Network.Google.Resource.DFAReporting.ContentCategories.Patch
    (
    -- * REST Resource
      ContentCategoriesPatchResource

    -- * Creating a Request
    , contentCategoriesPatch'
    , ContentCategoriesPatch'

    -- * Request Lenses
    , ccpQuotaUser
    , ccpPrettyPrint
    , ccpUserIP
    , ccpProFileId
    , ccpPayload
    , ccpKey
    , ccpId
    , ccpOAuthToken
    , ccpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesPatch@ which the
-- 'ContentCategoriesPatch'' request conforms to.
type ContentCategoriesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ContentCategory :>
                             Patch '[JSON] ContentCategory

-- | Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ 'contentCategoriesPatch'' smart constructor.
data ContentCategoriesPatch' = ContentCategoriesPatch'
    { _ccpQuotaUser   :: !(Maybe Text)
    , _ccpPrettyPrint :: !Bool
    , _ccpUserIP      :: !(Maybe Text)
    , _ccpProFileId   :: !Int64
    , _ccpPayload     :: !ContentCategory
    , _ccpKey         :: !(Maybe Key)
    , _ccpId          :: !Int64
    , _ccpOAuthToken  :: !(Maybe OAuthToken)
    , _ccpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpQuotaUser'
--
-- * 'ccpPrettyPrint'
--
-- * 'ccpUserIP'
--
-- * 'ccpProFileId'
--
-- * 'ccpPayload'
--
-- * 'ccpKey'
--
-- * 'ccpId'
--
-- * 'ccpOAuthToken'
--
-- * 'ccpFields'
contentCategoriesPatch'
    :: Int64 -- ^ 'profileId'
    -> ContentCategory -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesPatch'
contentCategoriesPatch' pCcpProFileId_ pCcpPayload_ pCcpId_ =
    ContentCategoriesPatch'
    { _ccpQuotaUser = Nothing
    , _ccpPrettyPrint = True
    , _ccpUserIP = Nothing
    , _ccpProFileId = pCcpProFileId_
    , _ccpPayload = pCcpPayload_
    , _ccpKey = Nothing
    , _ccpId = pCcpId_
    , _ccpOAuthToken = Nothing
    , _ccpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccpQuotaUser :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpQuotaUser
  = lens _ccpQuotaUser (\ s a -> s{_ccpQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccpPrettyPrint :: Lens' ContentCategoriesPatch' Bool
ccpPrettyPrint
  = lens _ccpPrettyPrint
      (\ s a -> s{_ccpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccpUserIP :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpUserIP
  = lens _ccpUserIP (\ s a -> s{_ccpUserIP = a})

-- | User profile ID associated with this request.
ccpProFileId :: Lens' ContentCategoriesPatch' Int64
ccpProFileId
  = lens _ccpProFileId (\ s a -> s{_ccpProFileId = a})

-- | Multipart request metadata.
ccpPayload :: Lens' ContentCategoriesPatch' ContentCategory
ccpPayload
  = lens _ccpPayload (\ s a -> s{_ccpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccpKey :: Lens' ContentCategoriesPatch' (Maybe Key)
ccpKey = lens _ccpKey (\ s a -> s{_ccpKey = a})

-- | Content category ID.
ccpId :: Lens' ContentCategoriesPatch' Int64
ccpId = lens _ccpId (\ s a -> s{_ccpId = a})

-- | OAuth 2.0 token for the current user.
ccpOAuthToken :: Lens' ContentCategoriesPatch' (Maybe OAuthToken)
ccpOAuthToken
  = lens _ccpOAuthToken
      (\ s a -> s{_ccpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccpFields :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpFields
  = lens _ccpFields (\ s a -> s{_ccpFields = a})

instance GoogleAuth ContentCategoriesPatch' where
        authKey = ccpKey . _Just
        authToken = ccpOAuthToken . _Just

instance GoogleRequest ContentCategoriesPatch' where
        type Rs ContentCategoriesPatch' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesPatch'{..}
          = go _ccpProFileId (Just _ccpId) _ccpQuotaUser
              (Just _ccpPrettyPrint)
              _ccpUserIP
              _ccpFields
              _ccpKey
              _ccpOAuthToken
              (Just AltJSON)
              _ccpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesPatchResource)
                      r
                      u
