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
    , ccpUserIp
    , ccpProfileId
    , ccpKey
    , ccpId
    , ccpOauthToken
    , ccpFields
    , ccpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesPatch@ which the
-- 'ContentCategoriesPatch'' request conforms to.
type ContentCategoriesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] ContentCategory

-- | Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ 'contentCategoriesPatch'' smart constructor.
data ContentCategoriesPatch' = ContentCategoriesPatch'
    { _ccpQuotaUser   :: !(Maybe Text)
    , _ccpPrettyPrint :: !Bool
    , _ccpUserIp      :: !(Maybe Text)
    , _ccpProfileId   :: !Int64
    , _ccpKey         :: !(Maybe Text)
    , _ccpId          :: !Int64
    , _ccpOauthToken  :: !(Maybe Text)
    , _ccpFields      :: !(Maybe Text)
    , _ccpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpQuotaUser'
--
-- * 'ccpPrettyPrint'
--
-- * 'ccpUserIp'
--
-- * 'ccpProfileId'
--
-- * 'ccpKey'
--
-- * 'ccpId'
--
-- * 'ccpOauthToken'
--
-- * 'ccpFields'
--
-- * 'ccpAlt'
contentCategoriesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesPatch'
contentCategoriesPatch' pCcpProfileId_ pCcpId_ =
    ContentCategoriesPatch'
    { _ccpQuotaUser = Nothing
    , _ccpPrettyPrint = True
    , _ccpUserIp = Nothing
    , _ccpProfileId = pCcpProfileId_
    , _ccpKey = Nothing
    , _ccpId = pCcpId_
    , _ccpOauthToken = Nothing
    , _ccpFields = Nothing
    , _ccpAlt = JSON
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
ccpUserIp :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpUserIp
  = lens _ccpUserIp (\ s a -> s{_ccpUserIp = a})

-- | User profile ID associated with this request.
ccpProfileId :: Lens' ContentCategoriesPatch' Int64
ccpProfileId
  = lens _ccpProfileId (\ s a -> s{_ccpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccpKey :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpKey = lens _ccpKey (\ s a -> s{_ccpKey = a})

-- | Content category ID.
ccpId :: Lens' ContentCategoriesPatch' Int64
ccpId = lens _ccpId (\ s a -> s{_ccpId = a})

-- | OAuth 2.0 token for the current user.
ccpOauthToken :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpOauthToken
  = lens _ccpOauthToken
      (\ s a -> s{_ccpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccpFields :: Lens' ContentCategoriesPatch' (Maybe Text)
ccpFields
  = lens _ccpFields (\ s a -> s{_ccpFields = a})

-- | Data format for the response.
ccpAlt :: Lens' ContentCategoriesPatch' Alt
ccpAlt = lens _ccpAlt (\ s a -> s{_ccpAlt = a})

instance GoogleRequest ContentCategoriesPatch' where
        type Rs ContentCategoriesPatch' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesPatch'{..}
          = go _ccpQuotaUser (Just _ccpPrettyPrint) _ccpUserIp
              _ccpProfileId
              _ccpKey
              (Just _ccpId)
              _ccpOauthToken
              _ccpFields
              (Just _ccpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesPatchResource)
                      r
                      u
