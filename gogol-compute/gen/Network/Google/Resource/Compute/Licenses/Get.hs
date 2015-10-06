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
module Network.Google.Resource.Compute.Licenses.Get
    (
    -- * REST Resource
      LicensesGetResource

    -- * Creating a Request
    , licensesGet'
    , LicensesGet'

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgProject
    , lgUserIP
    , lgKey
    , lgLicense
    , lgOAuthToken
    , lgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeLicensesGet@ which the
-- 'LicensesGet'' request conforms to.
type LicensesGetResource =
     Capture "project" Text :>
       "global" :>
         "licenses" :>
           Capture "license" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] License

-- | Returns the specified license resource.
--
-- /See:/ 'licensesGet'' smart constructor.
data LicensesGet' = LicensesGet'
    { _lgQuotaUser   :: !(Maybe Text)
    , _lgPrettyPrint :: !Bool
    , _lgProject     :: !Text
    , _lgUserIP      :: !(Maybe Text)
    , _lgKey         :: !(Maybe AuthKey)
    , _lgLicense     :: !Text
    , _lgOAuthToken  :: !(Maybe OAuthToken)
    , _lgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'lgUserIP'
--
-- * 'lgKey'
--
-- * 'lgLicense'
--
-- * 'lgOAuthToken'
--
-- * 'lgFields'
licensesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'license'
    -> LicensesGet'
licensesGet' pLgProject_ pLgLicense_ =
    LicensesGet'
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgProject = pLgProject_
    , _lgUserIP = Nothing
    , _lgKey = Nothing
    , _lgLicense = pLgLicense_
    , _lgOAuthToken = Nothing
    , _lgFields = Nothing
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
lgUserIP :: Lens' LicensesGet' (Maybe Text)
lgUserIP = lens _lgUserIP (\ s a -> s{_lgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LicensesGet' (Maybe AuthKey)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | Name of the license resource to return.
lgLicense :: Lens' LicensesGet' Text
lgLicense
  = lens _lgLicense (\ s a -> s{_lgLicense = a})

-- | OAuth 2.0 token for the current user.
lgOAuthToken :: Lens' LicensesGet' (Maybe OAuthToken)
lgOAuthToken
  = lens _lgOAuthToken (\ s a -> s{_lgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LicensesGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

instance GoogleAuth LicensesGet' where
        authKey = lgKey . _Just
        authToken = lgOAuthToken . _Just

instance GoogleRequest LicensesGet' where
        type Rs LicensesGet' = License
        request = requestWith computeRequest
        requestWith rq LicensesGet'{..}
          = go _lgProject _lgLicense _lgQuotaUser
              (Just _lgPrettyPrint)
              _lgUserIP
              _lgFields
              _lgKey
              _lgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy LicensesGetResource) rq
