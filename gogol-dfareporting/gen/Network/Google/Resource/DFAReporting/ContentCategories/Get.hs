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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one content category by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesGet@.
module Network.Google.Resource.DFAReporting.ContentCategories.Get
    (
    -- * REST Resource
      ContentCategoriesGetResource

    -- * Creating a Request
    , contentCategoriesGet'
    , ContentCategoriesGet'

    -- * Request Lenses
    , ccgQuotaUser
    , ccgPrettyPrint
    , ccgUserIP
    , ccgProFileId
    , ccgKey
    , ccgId
    , ccgOAuthToken
    , ccgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesGet@ method which the
-- 'ContentCategoriesGet'' request conforms to.
type ContentCategoriesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ContentCategory

-- | Gets one content category by ID.
--
-- /See:/ 'contentCategoriesGet'' smart constructor.
data ContentCategoriesGet' = ContentCategoriesGet'
    { _ccgQuotaUser   :: !(Maybe Text)
    , _ccgPrettyPrint :: !Bool
    , _ccgUserIP      :: !(Maybe Text)
    , _ccgProFileId   :: !Int64
    , _ccgKey         :: !(Maybe AuthKey)
    , _ccgId          :: !Int64
    , _ccgOAuthToken  :: !(Maybe OAuthToken)
    , _ccgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgQuotaUser'
--
-- * 'ccgPrettyPrint'
--
-- * 'ccgUserIP'
--
-- * 'ccgProFileId'
--
-- * 'ccgKey'
--
-- * 'ccgId'
--
-- * 'ccgOAuthToken'
--
-- * 'ccgFields'
contentCategoriesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesGet'
contentCategoriesGet' pCcgProFileId_ pCcgId_ =
    ContentCategoriesGet'
    { _ccgQuotaUser = Nothing
    , _ccgPrettyPrint = True
    , _ccgUserIP = Nothing
    , _ccgProFileId = pCcgProFileId_
    , _ccgKey = Nothing
    , _ccgId = pCcgId_
    , _ccgOAuthToken = Nothing
    , _ccgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccgQuotaUser :: Lens' ContentCategoriesGet' (Maybe Text)
ccgQuotaUser
  = lens _ccgQuotaUser (\ s a -> s{_ccgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccgPrettyPrint :: Lens' ContentCategoriesGet' Bool
ccgPrettyPrint
  = lens _ccgPrettyPrint
      (\ s a -> s{_ccgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccgUserIP :: Lens' ContentCategoriesGet' (Maybe Text)
ccgUserIP
  = lens _ccgUserIP (\ s a -> s{_ccgUserIP = a})

-- | User profile ID associated with this request.
ccgProFileId :: Lens' ContentCategoriesGet' Int64
ccgProFileId
  = lens _ccgProFileId (\ s a -> s{_ccgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccgKey :: Lens' ContentCategoriesGet' (Maybe AuthKey)
ccgKey = lens _ccgKey (\ s a -> s{_ccgKey = a})

-- | Content category ID.
ccgId :: Lens' ContentCategoriesGet' Int64
ccgId = lens _ccgId (\ s a -> s{_ccgId = a})

-- | OAuth 2.0 token for the current user.
ccgOAuthToken :: Lens' ContentCategoriesGet' (Maybe OAuthToken)
ccgOAuthToken
  = lens _ccgOAuthToken
      (\ s a -> s{_ccgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccgFields :: Lens' ContentCategoriesGet' (Maybe Text)
ccgFields
  = lens _ccgFields (\ s a -> s{_ccgFields = a})

instance GoogleAuth ContentCategoriesGet' where
        _AuthKey = ccgKey . _Just
        _AuthToken = ccgOAuthToken . _Just

instance GoogleRequest ContentCategoriesGet' where
        type Rs ContentCategoriesGet' = ContentCategory
        request = requestWith dFAReportingRequest
        requestWith rq ContentCategoriesGet'{..}
          = go _ccgProFileId _ccgId _ccgQuotaUser
              (Just _ccgPrettyPrint)
              _ccgUserIP
              _ccgFields
              _ccgKey
              _ccgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ContentCategoriesGetResource)
                      rq
