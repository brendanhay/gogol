{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Licenses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified license resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeLicensesGet@.
module Compute.Licenses.Get
    (
    -- * REST Resource
      LicensesGetAPI

    -- * Creating a Request
    , licensesGet
    , LicensesGet

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgProject
    , lgUserIp
    , lgKey
    , lgLicense
    , lgOauthToken
    , lgFields
    , lgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeLicensesGet@ which the
-- 'LicensesGet' request conforms to.
type LicensesGetAPI =
     Capture "project" Text :>
       "global" :>
         "licenses" :>
           Capture "license" Text :> Get '[JSON] License

-- | Returns the specified license resource.
--
-- /See:/ 'licensesGet' smart constructor.
data LicensesGet = LicensesGet
    { _lgQuotaUser   :: !(Maybe Text)
    , _lgPrettyPrint :: !Bool
    , _lgProject     :: !Text
    , _lgUserIp      :: !(Maybe Text)
    , _lgKey         :: !(Maybe Text)
    , _lgLicense     :: !Text
    , _lgOauthToken  :: !(Maybe Text)
    , _lgFields      :: !(Maybe Text)
    , _lgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicensesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgProject'
--
-- * 'lgUserIp'
--
-- * 'lgKey'
--
-- * 'lgLicense'
--
-- * 'lgOauthToken'
--
-- * 'lgFields'
--
-- * 'lgAlt'
licensesGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'license'
    -> LicensesGet
licensesGet pLgProject_ pLgLicense_ =
    LicensesGet
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgProject = pLgProject_
    , _lgUserIp = Nothing
    , _lgKey = Nothing
    , _lgLicense = pLgLicense_
    , _lgOauthToken = Nothing
    , _lgFields = Nothing
    , _lgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LicensesGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LicensesGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | Project ID for this request.
lgProject :: Lens' LicensesGet' Text
lgProject
  = lens _lgProject (\ s a -> s{_lgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIp :: Lens' LicensesGet' (Maybe Text)
lgUserIp = lens _lgUserIp (\ s a -> s{_lgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LicensesGet' (Maybe Text)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | Name of the license resource to return.
lgLicense :: Lens' LicensesGet' Text
lgLicense
  = lens _lgLicense (\ s a -> s{_lgLicense = a})

-- | OAuth 2.0 token for the current user.
lgOauthToken :: Lens' LicensesGet' (Maybe Text)
lgOauthToken
  = lens _lgOauthToken (\ s a -> s{_lgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LicensesGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

-- | Data format for the response.
lgAlt :: Lens' LicensesGet' Text
lgAlt = lens _lgAlt (\ s a -> s{_lgAlt = a})

instance GoogleRequest LicensesGet' where
        type Rs LicensesGet' = License
        request = requestWithRoute defReq computeURL
        requestWithRoute r u LicensesGet{..}
          = go _lgQuotaUser _lgPrettyPrint _lgProject _lgUserIp
              _lgKey
              _lgLicense
              _lgOauthToken
              _lgFields
              _lgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LicensesGetAPI) r u
