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
-- Module      : Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseGrouplicensesGet@.
module Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
    (
    -- * REST Resource
      GrouplicensesGetResource

    -- * Creating a Request
    , grouplicensesGet'
    , GrouplicensesGet'

    -- * Request Lenses
    , ggQuotaUser
    , ggPrettyPrint
    , ggEnterpriseId
    , ggUserIP
    , ggKey
    , ggOAuthToken
    , ggGroupLicenseId
    , ggFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseGrouplicensesGet@ which the
-- 'GrouplicensesGet'' request conforms to.
type GrouplicensesGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "groupLicenses" :>
           Capture "groupLicenseId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] GroupLicense

-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ 'grouplicensesGet'' smart constructor.
data GrouplicensesGet' = GrouplicensesGet'
    { _ggQuotaUser      :: !(Maybe Text)
    , _ggPrettyPrint    :: !Bool
    , _ggEnterpriseId   :: !Text
    , _ggUserIP         :: !(Maybe Text)
    , _ggKey            :: !(Maybe AuthKey)
    , _ggOAuthToken     :: !(Maybe OAuthToken)
    , _ggGroupLicenseId :: !Text
    , _ggFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GrouplicensesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggQuotaUser'
--
-- * 'ggPrettyPrint'
--
-- * 'ggEnterpriseId'
--
-- * 'ggUserIP'
--
-- * 'ggKey'
--
-- * 'ggOAuthToken'
--
-- * 'ggGroupLicenseId'
--
-- * 'ggFields'
grouplicensesGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'groupLicenseId'
    -> GrouplicensesGet'
grouplicensesGet' pGgEnterpriseId_ pGgGroupLicenseId_ =
    GrouplicensesGet'
    { _ggQuotaUser = Nothing
    , _ggPrettyPrint = True
    , _ggEnterpriseId = pGgEnterpriseId_
    , _ggUserIP = Nothing
    , _ggKey = Nothing
    , _ggOAuthToken = Nothing
    , _ggGroupLicenseId = pGgGroupLicenseId_
    , _ggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ggQuotaUser :: Lens' GrouplicensesGet' (Maybe Text)
ggQuotaUser
  = lens _ggQuotaUser (\ s a -> s{_ggQuotaUser = a})

-- | Returns response with indentations and line breaks.
ggPrettyPrint :: Lens' GrouplicensesGet' Bool
ggPrettyPrint
  = lens _ggPrettyPrint
      (\ s a -> s{_ggPrettyPrint = a})

-- | The ID of the enterprise.
ggEnterpriseId :: Lens' GrouplicensesGet' Text
ggEnterpriseId
  = lens _ggEnterpriseId
      (\ s a -> s{_ggEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ggUserIP :: Lens' GrouplicensesGet' (Maybe Text)
ggUserIP = lens _ggUserIP (\ s a -> s{_ggUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ggKey :: Lens' GrouplicensesGet' (Maybe AuthKey)
ggKey = lens _ggKey (\ s a -> s{_ggKey = a})

-- | OAuth 2.0 token for the current user.
ggOAuthToken :: Lens' GrouplicensesGet' (Maybe OAuthToken)
ggOAuthToken
  = lens _ggOAuthToken (\ s a -> s{_ggOAuthToken = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
ggGroupLicenseId :: Lens' GrouplicensesGet' Text
ggGroupLicenseId
  = lens _ggGroupLicenseId
      (\ s a -> s{_ggGroupLicenseId = a})

-- | Selector specifying which fields to include in a partial response.
ggFields :: Lens' GrouplicensesGet' (Maybe Text)
ggFields = lens _ggFields (\ s a -> s{_ggFields = a})

instance GoogleAuth GrouplicensesGet' where
        authKey = ggKey . _Just
        authToken = ggOAuthToken . _Just

instance GoogleRequest GrouplicensesGet' where
        type Rs GrouplicensesGet' = GroupLicense
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u GrouplicensesGet'{..}
          = go _ggEnterpriseId _ggGroupLicenseId _ggQuotaUser
              (Just _ggPrettyPrint)
              _ggUserIP
              _ggFields
              _ggKey
              _ggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GrouplicensesGetResource)
                      r
                      u
