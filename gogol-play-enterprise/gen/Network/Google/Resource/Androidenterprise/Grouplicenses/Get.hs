{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Grouplicenses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseGrouplicensesGet@.
module Androidenterprise.Grouplicenses.Get
    (
    -- * REST Resource
      GrouplicensesGetAPI

    -- * Creating a Request
    , grouplicensesGet
    , GrouplicensesGet

    -- * Request Lenses
    , ggQuotaUser
    , ggPrettyPrint
    , ggEnterpriseId
    , ggUserIp
    , ggKey
    , ggOauthToken
    , ggGroupLicenseId
    , ggFields
    , ggAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseGrouplicensesGet@ which the
-- 'GrouplicensesGet' request conforms to.
type GrouplicensesGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "groupLicenses" :>
           Capture "groupLicenseId" Text :>
             Get '[JSON] GroupLicense

-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ 'grouplicensesGet' smart constructor.
data GrouplicensesGet = GrouplicensesGet
    { _ggQuotaUser      :: !(Maybe Text)
    , _ggPrettyPrint    :: !Bool
    , _ggEnterpriseId   :: !Text
    , _ggUserIp         :: !(Maybe Text)
    , _ggKey            :: !(Maybe Text)
    , _ggOauthToken     :: !(Maybe Text)
    , _ggGroupLicenseId :: !Text
    , _ggFields         :: !(Maybe Text)
    , _ggAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ggUserIp'
--
-- * 'ggKey'
--
-- * 'ggOauthToken'
--
-- * 'ggGroupLicenseId'
--
-- * 'ggFields'
--
-- * 'ggAlt'
grouplicensesGet
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'groupLicenseId'
    -> GrouplicensesGet
grouplicensesGet pGgEnterpriseId_ pGgGroupLicenseId_ =
    GrouplicensesGet
    { _ggQuotaUser = Nothing
    , _ggPrettyPrint = True
    , _ggEnterpriseId = pGgEnterpriseId_
    , _ggUserIp = Nothing
    , _ggKey = Nothing
    , _ggOauthToken = Nothing
    , _ggGroupLicenseId = pGgGroupLicenseId_
    , _ggFields = Nothing
    , _ggAlt = "json"
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
ggUserIp :: Lens' GrouplicensesGet' (Maybe Text)
ggUserIp = lens _ggUserIp (\ s a -> s{_ggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ggKey :: Lens' GrouplicensesGet' (Maybe Text)
ggKey = lens _ggKey (\ s a -> s{_ggKey = a})

-- | OAuth 2.0 token for the current user.
ggOauthToken :: Lens' GrouplicensesGet' (Maybe Text)
ggOauthToken
  = lens _ggOauthToken (\ s a -> s{_ggOauthToken = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
ggGroupLicenseId :: Lens' GrouplicensesGet' Text
ggGroupLicenseId
  = lens _ggGroupLicenseId
      (\ s a -> s{_ggGroupLicenseId = a})

-- | Selector specifying which fields to include in a partial response.
ggFields :: Lens' GrouplicensesGet' (Maybe Text)
ggFields = lens _ggFields (\ s a -> s{_ggFields = a})

-- | Data format for the response.
ggAlt :: Lens' GrouplicensesGet' Text
ggAlt = lens _ggAlt (\ s a -> s{_ggAlt = a})

instance GoogleRequest GrouplicensesGet' where
        type Rs GrouplicensesGet' = GroupLicense
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u GrouplicensesGet{..}
          = go _ggQuotaUser _ggPrettyPrint _ggEnterpriseId
              _ggUserIp
              _ggKey
              _ggOauthToken
              _ggGroupLicenseId
              _ggFields
              _ggAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GrouplicensesGetAPI)
                      r
                      u
