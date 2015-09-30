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
    , ccdUserIp
    , ccdProfileId
    , ccdKey
    , ccdId
    , ccdOauthToken
    , ccdFields
    , ccdAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing content category.
--
-- /See:/ 'contentCategoriesDelete'' smart constructor.
data ContentCategoriesDelete' = ContentCategoriesDelete'
    { _ccdQuotaUser   :: !(Maybe Text)
    , _ccdPrettyPrint :: !Bool
    , _ccdUserIp      :: !(Maybe Text)
    , _ccdProfileId   :: !Int64
    , _ccdKey         :: !(Maybe Text)
    , _ccdId          :: !Int64
    , _ccdOauthToken  :: !(Maybe Text)
    , _ccdFields      :: !(Maybe Text)
    , _ccdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdQuotaUser'
--
-- * 'ccdPrettyPrint'
--
-- * 'ccdUserIp'
--
-- * 'ccdProfileId'
--
-- * 'ccdKey'
--
-- * 'ccdId'
--
-- * 'ccdOauthToken'
--
-- * 'ccdFields'
--
-- * 'ccdAlt'
contentCategoriesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesDelete'
contentCategoriesDelete' pCcdProfileId_ pCcdId_ =
    ContentCategoriesDelete'
    { _ccdQuotaUser = Nothing
    , _ccdPrettyPrint = True
    , _ccdUserIp = Nothing
    , _ccdProfileId = pCcdProfileId_
    , _ccdKey = Nothing
    , _ccdId = pCcdId_
    , _ccdOauthToken = Nothing
    , _ccdFields = Nothing
    , _ccdAlt = JSON
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
ccdUserIp :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdUserIp
  = lens _ccdUserIp (\ s a -> s{_ccdUserIp = a})

-- | User profile ID associated with this request.
ccdProfileId :: Lens' ContentCategoriesDelete' Int64
ccdProfileId
  = lens _ccdProfileId (\ s a -> s{_ccdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccdKey :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdKey = lens _ccdKey (\ s a -> s{_ccdKey = a})

-- | Content category ID.
ccdId :: Lens' ContentCategoriesDelete' Int64
ccdId = lens _ccdId (\ s a -> s{_ccdId = a})

-- | OAuth 2.0 token for the current user.
ccdOauthToken :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdOauthToken
  = lens _ccdOauthToken
      (\ s a -> s{_ccdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccdFields :: Lens' ContentCategoriesDelete' (Maybe Text)
ccdFields
  = lens _ccdFields (\ s a -> s{_ccdFields = a})

-- | Data format for the response.
ccdAlt :: Lens' ContentCategoriesDelete' Alt
ccdAlt = lens _ccdAlt (\ s a -> s{_ccdAlt = a})

instance GoogleRequest ContentCategoriesDelete' where
        type Rs ContentCategoriesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesDelete'{..}
          = go _ccdQuotaUser (Just _ccdPrettyPrint) _ccdUserIp
              _ccdProfileId
              _ccdKey
              _ccdId
              _ccdOauthToken
              _ccdFields
              (Just _ccdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesDeleteResource)
                      r
                      u
