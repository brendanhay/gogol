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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesDelete@.
module Network.Google.Resource.DFAReporting.ContentCategories.Delete
    (
    -- * REST Resource
      ContentCategoriesDeleteResource

    -- * Creating a Request
    , contentCategoriesDelete'
    , ContentCategoriesDelete'

    -- * Request Lenses
    , ccdQuotaUser
    , ccdPrettyPrint
    , ccdUserIP
    , ccdProFileId
    , ccdKey
    , ccdId
    , ccdOAuthToken
    , ccdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesDelete@ which the
-- 'ContentCategoriesDelete'' request conforms to.
type ContentCategoriesDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing content category.
--
-- /See:/ 'contentCategoriesDelete'' smart constructor.
data ContentCategoriesDelete' = ContentCategoriesDelete'
    { _ccdQuotaUser   :: !(Maybe Text)
    , _ccdPrettyPrint :: !Bool
    , _ccdUserIP      :: !(Maybe Text)
    , _ccdProFileId   :: !Int64
    , _ccdKey         :: !(Maybe Key)
    , _ccdId          :: !Int64
    , _ccdOAuthToken  :: !(Maybe OAuthToken)
    , _ccdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdQuotaUser'
--
-- * 'ccdPrettyPrint'
--
-- * 'ccdUserIP'
--
-- * 'ccdProFileId'
--
-- * 'ccdKey'
--
-- * 'ccdId'
--
-- * 'ccdOAuthToken'
--
-- * 'ccdFields'
contentCategoriesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesDelete'
contentCategoriesDelete' pCcdProFileId_ pCcdId_ =
    ContentCategoriesDelete'
    { _ccdQuotaUser = Nothing
    , _ccdPrettyPrint = True
    , _ccdUserIP = Nothing
    , _ccdProFileId = pCcdProFileId_
    , _ccdKey = Nothing
    , _ccdId = pCcdId_
    , _ccdOAuthToken = Nothing
    , _ccdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccdQuotaUser :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdQuotaUser
  = lens _ccdQuotaUser (\ s a -> s{_ccdQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccdPrettyPrint :: Lens' ContentCategoriesDelete' Bool
ccdPrettyPrint
  = lens _ccdPrettyPrint
      (\ s a -> s{_ccdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccdUserIP :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdUserIP
  = lens _ccdUserIP (\ s a -> s{_ccdUserIP = a})

-- | User profile ID associated with this request.
ccdProFileId :: Lens' ContentCategoriesDelete' Int64
ccdProFileId
  = lens _ccdProFileId (\ s a -> s{_ccdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccdKey :: Lens' ContentCategoriesDelete' (Maybe Key)
ccdKey = lens _ccdKey (\ s a -> s{_ccdKey = a})

-- | Content category ID.
ccdId :: Lens' ContentCategoriesDelete' Int64
ccdId = lens _ccdId (\ s a -> s{_ccdId = a})

-- | OAuth 2.0 token for the current user.
ccdOAuthToken :: Lens' ContentCategoriesDelete' (Maybe OAuthToken)
ccdOAuthToken
  = lens _ccdOAuthToken
      (\ s a -> s{_ccdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccdFields :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdFields
  = lens _ccdFields (\ s a -> s{_ccdFields = a})

instance GoogleAuth ContentCategoriesDelete' where
        authKey = ccdKey . _Just
        authToken = ccdOAuthToken . _Just

instance GoogleRequest ContentCategoriesDelete' where
        type Rs ContentCategoriesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesDelete'{..}
          = go _ccdProFileId _ccdId _ccdQuotaUser
              (Just _ccdPrettyPrint)
              _ccdUserIP
              _ccdFields
              _ccdKey
              _ccdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesDeleteResource)
                      r
                      u
