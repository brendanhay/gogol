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
-- Module      : Network.Google.Resource.AndroidEnterprise.Grouplicenses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves IDs of all products for which the enterprise has a group
-- license.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseGrouplicensesList@.
module Network.Google.Resource.AndroidEnterprise.Grouplicenses.List
    (
    -- * REST Resource
      GrouplicensesListResource

    -- * Creating a Request
    , grouplicensesList'
    , GrouplicensesList'

    -- * Request Lenses
    , glQuotaUser
    , glPrettyPrint
    , glEnterpriseId
    , glUserIP
    , glKey
    , glOAuthToken
    , glFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseGrouplicensesList@ method which the
-- 'GrouplicensesList'' request conforms to.
type GrouplicensesListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "groupLicenses" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GroupLicensesListResponse

-- | Retrieves IDs of all products for which the enterprise has a group
-- license.
--
-- /See:/ 'grouplicensesList'' smart constructor.
data GrouplicensesList' = GrouplicensesList'
    { _glQuotaUser    :: !(Maybe Text)
    , _glPrettyPrint  :: !Bool
    , _glEnterpriseId :: !Text
    , _glUserIP       :: !(Maybe Text)
    , _glKey          :: !(Maybe AuthKey)
    , _glOAuthToken   :: !(Maybe OAuthToken)
    , _glFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'glUserIP'
--
-- * 'glKey'
--
-- * 'glOAuthToken'
--
-- * 'glFields'
grouplicensesList'
    :: Text -- ^ 'enterpriseId'
    -> GrouplicensesList'
grouplicensesList' pGlEnterpriseId_ =
    GrouplicensesList'
    { _glQuotaUser = Nothing
    , _glPrettyPrint = True
    , _glEnterpriseId = pGlEnterpriseId_
    , _glUserIP = Nothing
    , _glKey = Nothing
    , _glOAuthToken = Nothing
    , _glFields = Nothing
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
glUserIP :: Lens' GrouplicensesList' (Maybe Text)
glUserIP = lens _glUserIP (\ s a -> s{_glUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
glKey :: Lens' GrouplicensesList' (Maybe AuthKey)
glKey = lens _glKey (\ s a -> s{_glKey = a})

-- | OAuth 2.0 token for the current user.
glOAuthToken :: Lens' GrouplicensesList' (Maybe OAuthToken)
glOAuthToken
  = lens _glOAuthToken (\ s a -> s{_glOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
glFields :: Lens' GrouplicensesList' (Maybe Text)
glFields = lens _glFields (\ s a -> s{_glFields = a})

instance GoogleAuth GrouplicensesList' where
        _AuthKey = glKey . _Just
        _AuthToken = glOAuthToken . _Just

instance GoogleRequest GrouplicensesList' where
        type Rs GrouplicensesList' =
             GroupLicensesListResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq GrouplicensesList'{..}
          = go _glEnterpriseId _glQuotaUser
              (Just _glPrettyPrint)
              _glUserIP
              _glFields
              _glKey
              _glOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GrouplicensesListResource)
                      rq
