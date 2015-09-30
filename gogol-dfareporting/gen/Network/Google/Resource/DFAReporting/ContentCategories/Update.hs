{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.ContentCategories.Update
    (
    -- * REST Resource
      ContentCategoriesUpdateAPI

    -- * Creating a Request
    , contentCategoriesUpdate
    , ContentCategoriesUpdate

    -- * Request Lenses
    , ccuQuotaUser
    , ccuPrettyPrint
    , ccuUserIp
    , ccuProfileId
    , ccuKey
    , ccuOauthToken
    , ccuFields
    , ccuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesUpdate@ which the
-- 'ContentCategoriesUpdate' request conforms to.
type ContentCategoriesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :> Put '[JSON] ContentCategory

-- | Updates an existing content category.
--
-- /See:/ 'contentCategoriesUpdate' smart constructor.
data ContentCategoriesUpdate = ContentCategoriesUpdate
    { _ccuQuotaUser   :: !(Maybe Text)
    , _ccuPrettyPrint :: !Bool
    , _ccuUserIp      :: !(Maybe Text)
    , _ccuProfileId   :: !Int64
    , _ccuKey         :: !(Maybe Text)
    , _ccuOauthToken  :: !(Maybe Text)
    , _ccuFields      :: !(Maybe Text)
    , _ccuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuQuotaUser'
--
-- * 'ccuPrettyPrint'
--
-- * 'ccuUserIp'
--
-- * 'ccuProfileId'
--
-- * 'ccuKey'
--
-- * 'ccuOauthToken'
--
-- * 'ccuFields'
--
-- * 'ccuAlt'
contentCategoriesUpdate
    :: Int64 -- ^ 'profileId'
    -> ContentCategoriesUpdate
contentCategoriesUpdate pCcuProfileId_ =
    ContentCategoriesUpdate
    { _ccuQuotaUser = Nothing
    , _ccuPrettyPrint = True
    , _ccuUserIp = Nothing
    , _ccuProfileId = pCcuProfileId_
    , _ccuKey = Nothing
    , _ccuOauthToken = Nothing
    , _ccuFields = Nothing
    , _ccuAlt = "json"
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
ccuUserIp :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuUserIp
  = lens _ccuUserIp (\ s a -> s{_ccuUserIp = a})

-- | User profile ID associated with this request.
ccuProfileId :: Lens' ContentCategoriesUpdate' Int64
ccuProfileId
  = lens _ccuProfileId (\ s a -> s{_ccuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccuKey :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuKey = lens _ccuKey (\ s a -> s{_ccuKey = a})

-- | OAuth 2.0 token for the current user.
ccuOauthToken :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuOauthToken
  = lens _ccuOauthToken
      (\ s a -> s{_ccuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccuFields :: Lens' ContentCategoriesUpdate' (Maybe Text)
ccuFields
  = lens _ccuFields (\ s a -> s{_ccuFields = a})

-- | Data format for the response.
ccuAlt :: Lens' ContentCategoriesUpdate' Text
ccuAlt = lens _ccuAlt (\ s a -> s{_ccuAlt = a})

instance GoogleRequest ContentCategoriesUpdate' where
        type Rs ContentCategoriesUpdate' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesUpdate{..}
          = go _ccuQuotaUser _ccuPrettyPrint _ccuUserIp
              _ccuProfileId
              _ccuKey
              _ccuOauthToken
              _ccuFields
              _ccuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesUpdateAPI)
                      r
                      u
