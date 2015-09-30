{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Grouplicenses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves IDs of all products for which the enterprise has a group
-- license.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseGrouplicensesList@.
module Androidenterprise.Grouplicenses.List
    (
    -- * REST Resource
      GrouplicensesListAPI

    -- * Creating a Request
    , grouplicensesList
    , GrouplicensesList

    -- * Request Lenses
    , glQuotaUser
    , glPrettyPrint
    , glEnterpriseId
    , glUserIp
    , glKey
    , glOauthToken
    , glFields
    , glAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseGrouplicensesList@ which the
-- 'GrouplicensesList' request conforms to.
type GrouplicensesListAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "groupLicenses" :>
           Get '[JSON] GroupLicensesListResponse

-- | Retrieves IDs of all products for which the enterprise has a group
-- license.
--
-- /See:/ 'grouplicensesList' smart constructor.
data GrouplicensesList = GrouplicensesList
    { _glQuotaUser    :: !(Maybe Text)
    , _glPrettyPrint  :: !Bool
    , _glEnterpriseId :: !Text
    , _glUserIp       :: !(Maybe Text)
    , _glKey          :: !(Maybe Text)
    , _glOauthToken   :: !(Maybe Text)
    , _glFields       :: !(Maybe Text)
    , _glAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GrouplicensesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glQuotaUser'
--
-- * 'glPrettyPrint'
--
-- * 'glEnterpriseId'
--
-- * 'glUserIp'
--
-- * 'glKey'
--
-- * 'glOauthToken'
--
-- * 'glFields'
--
-- * 'glAlt'
grouplicensesList
    :: Text -- ^ 'enterpriseId'
    -> GrouplicensesList
grouplicensesList pGlEnterpriseId_ =
    GrouplicensesList
    { _glQuotaUser = Nothing
    , _glPrettyPrint = True
    , _glEnterpriseId = pGlEnterpriseId_
    , _glUserIp = Nothing
    , _glKey = Nothing
    , _glOauthToken = Nothing
    , _glFields = Nothing
    , _glAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
glQuotaUser :: Lens' GrouplicensesList' (Maybe Text)
glQuotaUser
  = lens _glQuotaUser (\ s a -> s{_glQuotaUser = a})

-- | Returns response with indentations and line breaks.
glPrettyPrint :: Lens' GrouplicensesList' Bool
glPrettyPrint
  = lens _glPrettyPrint
      (\ s a -> s{_glPrettyPrint = a})

-- | The ID of the enterprise.
glEnterpriseId :: Lens' GrouplicensesList' Text
glEnterpriseId
  = lens _glEnterpriseId
      (\ s a -> s{_glEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
glUserIp :: Lens' GrouplicensesList' (Maybe Text)
glUserIp = lens _glUserIp (\ s a -> s{_glUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
glKey :: Lens' GrouplicensesList' (Maybe Text)
glKey = lens _glKey (\ s a -> s{_glKey = a})

-- | OAuth 2.0 token for the current user.
glOauthToken :: Lens' GrouplicensesList' (Maybe Text)
glOauthToken
  = lens _glOauthToken (\ s a -> s{_glOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
glFields :: Lens' GrouplicensesList' (Maybe Text)
glFields = lens _glFields (\ s a -> s{_glFields = a})

-- | Data format for the response.
glAlt :: Lens' GrouplicensesList' Text
glAlt = lens _glAlt (\ s a -> s{_glAlt = a})

instance GoogleRequest GrouplicensesList' where
        type Rs GrouplicensesList' =
             GroupLicensesListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u GrouplicensesList{..}
          = go _glQuotaUser _glPrettyPrint _glEnterpriseId
              _glUserIp
              _glKey
              _glOauthToken
              _glFields
              _glAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GrouplicensesListAPI)
                      r
                      u
