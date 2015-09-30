{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module DFAReporting.ContentCategories.Insert
    (
    -- * REST Resource
      ContentCategoriesInsertAPI

    -- * Creating a Request
    , contentCategoriesInsert
    , ContentCategoriesInsert

    -- * Request Lenses
    , cciQuotaUser
    , cciPrettyPrint
    , cciUserIp
    , cciProfileId
    , cciKey
    , cciOauthToken
    , cciFields
    , cciAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesInsert@ which the
-- 'ContentCategoriesInsert' request conforms to.
type ContentCategoriesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :> Post '[JSON] ContentCategory

-- | Inserts a new content category.
--
-- /See:/ 'contentCategoriesInsert' smart constructor.
data ContentCategoriesInsert = ContentCategoriesInsert
    { _cciQuotaUser   :: !(Maybe Text)
    , _cciPrettyPrint :: !Bool
    , _cciUserIp      :: !(Maybe Text)
    , _cciProfileId   :: !Int64
    , _cciKey         :: !(Maybe Text)
    , _cciOauthToken  :: !(Maybe Text)
    , _cciFields      :: !(Maybe Text)
    , _cciAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciQuotaUser'
--
-- * 'cciPrettyPrint'
--
-- * 'cciUserIp'
--
-- * 'cciProfileId'
--
-- * 'cciKey'
--
-- * 'cciOauthToken'
--
-- * 'cciFields'
--
-- * 'cciAlt'
contentCategoriesInsert
    :: Int64 -- ^ 'profileId'
    -> ContentCategoriesInsert
contentCategoriesInsert pCciProfileId_ =
    ContentCategoriesInsert
    { _cciQuotaUser = Nothing
    , _cciPrettyPrint = True
    , _cciUserIp = Nothing
    , _cciProfileId = pCciProfileId_
    , _cciKey = Nothing
    , _cciOauthToken = Nothing
    , _cciFields = Nothing
    , _cciAlt = "json"
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
cciUserIp :: Lens' ContentCategoriesInsert' (Maybe Text)
cciUserIp
  = lens _cciUserIp (\ s a -> s{_cciUserIp = a})

-- | User profile ID associated with this request.
cciProfileId :: Lens' ContentCategoriesInsert' Int64
cciProfileId
  = lens _cciProfileId (\ s a -> s{_cciProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cciKey :: Lens' ContentCategoriesInsert' (Maybe Text)
cciKey = lens _cciKey (\ s a -> s{_cciKey = a})

-- | OAuth 2.0 token for the current user.
cciOauthToken :: Lens' ContentCategoriesInsert' (Maybe Text)
cciOauthToken
  = lens _cciOauthToken
      (\ s a -> s{_cciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cciFields :: Lens' ContentCategoriesInsert' (Maybe Text)
cciFields
  = lens _cciFields (\ s a -> s{_cciFields = a})

-- | Data format for the response.
cciAlt :: Lens' ContentCategoriesInsert' Text
cciAlt = lens _cciAlt (\ s a -> s{_cciAlt = a})

instance GoogleRequest ContentCategoriesInsert' where
        type Rs ContentCategoriesInsert' = ContentCategory
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesInsert{..}
          = go _cciQuotaUser _cciPrettyPrint _cciUserIp
              _cciProfileId
              _cciKey
              _cciOauthToken
              _cciFields
              _cciAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesInsertAPI)
                      r
                      u
