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
-- Module      : Network.Google.Resource.Directory.OrgUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Organization Units
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsList@.
module Network.Google.Resource.Directory.OrgUnits.List
    (
    -- * REST Resource
      OrgUnitsListResource

    -- * Creating a Request
    , orgUnitsList'
    , OrgUnitsList'

    -- * Request Lenses
    , oulQuotaUser
    , oulPrettyPrint
    , oulUserIP
    , oulOrgUnitPath
    , oulCustomerId
    , oulKey
    , oulType
    , oulOAuthToken
    , oulFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsList@ which the
-- 'OrgUnitsList'' request conforms to.
type OrgUnitsListResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "orgUnitPath" Text :>
                   QueryParam "key" Key :>
                     QueryParam "type" DirectoryOrgUnitsListType :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] OrgUnits

-- | Retrieve all Organization Units
--
-- /See:/ 'orgUnitsList'' smart constructor.
data OrgUnitsList' = OrgUnitsList'
    { _oulQuotaUser   :: !(Maybe Text)
    , _oulPrettyPrint :: !Bool
    , _oulUserIP      :: !(Maybe Text)
    , _oulOrgUnitPath :: !Text
    , _oulCustomerId  :: !Text
    , _oulKey         :: !(Maybe Key)
    , _oulType        :: !(Maybe DirectoryOrgUnitsListType)
    , _oulOAuthToken  :: !(Maybe OAuthToken)
    , _oulFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulQuotaUser'
--
-- * 'oulPrettyPrint'
--
-- * 'oulUserIP'
--
-- * 'oulOrgUnitPath'
--
-- * 'oulCustomerId'
--
-- * 'oulKey'
--
-- * 'oulType'
--
-- * 'oulOAuthToken'
--
-- * 'oulFields'
orgUnitsList'
    :: Text -- ^ 'customerId'
    -> OrgUnitsList'
orgUnitsList' pOulCustomerId_ =
    OrgUnitsList'
    { _oulQuotaUser = Nothing
    , _oulPrettyPrint = True
    , _oulUserIP = Nothing
    , _oulOrgUnitPath = ""
    , _oulCustomerId = pOulCustomerId_
    , _oulKey = Nothing
    , _oulType = Nothing
    , _oulOAuthToken = Nothing
    , _oulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oulQuotaUser :: Lens' OrgUnitsList' (Maybe Text)
oulQuotaUser
  = lens _oulQuotaUser (\ s a -> s{_oulQuotaUser = a})

-- | Returns response with indentations and line breaks.
oulPrettyPrint :: Lens' OrgUnitsList' Bool
oulPrettyPrint
  = lens _oulPrettyPrint
      (\ s a -> s{_oulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oulUserIP :: Lens' OrgUnitsList' (Maybe Text)
oulUserIP
  = lens _oulUserIP (\ s a -> s{_oulUserIP = a})

-- | the URL-encoded organization unit\'s path or its Id
oulOrgUnitPath :: Lens' OrgUnitsList' Text
oulOrgUnitPath
  = lens _oulOrgUnitPath
      (\ s a -> s{_oulOrgUnitPath = a})

-- | Immutable id of the Google Apps account
oulCustomerId :: Lens' OrgUnitsList' Text
oulCustomerId
  = lens _oulCustomerId
      (\ s a -> s{_oulCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oulKey :: Lens' OrgUnitsList' (Maybe Key)
oulKey = lens _oulKey (\ s a -> s{_oulKey = a})

-- | Whether to return all sub-organizations or just immediate children
oulType :: Lens' OrgUnitsList' (Maybe DirectoryOrgUnitsListType)
oulType = lens _oulType (\ s a -> s{_oulType = a})

-- | OAuth 2.0 token for the current user.
oulOAuthToken :: Lens' OrgUnitsList' (Maybe OAuthToken)
oulOAuthToken
  = lens _oulOAuthToken
      (\ s a -> s{_oulOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oulFields :: Lens' OrgUnitsList' (Maybe Text)
oulFields
  = lens _oulFields (\ s a -> s{_oulFields = a})

instance GoogleAuth OrgUnitsList' where
        authKey = oulKey . _Just
        authToken = oulOAuthToken . _Just

instance GoogleRequest OrgUnitsList' where
        type Rs OrgUnitsList' = OrgUnits
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgUnitsList'{..}
          = go _oulQuotaUser (Just _oulPrettyPrint) _oulUserIP
              (Just _oulOrgUnitPath)
              _oulCustomerId
              _oulKey
              _oulType
              _oulOAuthToken
              _oulFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrgUnitsListResource)
                      r
                      u
