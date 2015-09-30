{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Orgunits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Organization Units
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgunitsList@.
module Directory.Orgunits.List
    (
    -- * REST Resource
      OrgunitsListAPI

    -- * Creating a Request
    , orgunitsList
    , OrgunitsList

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olUserIp
    , olOrgUnitPath
    , olCustomerId
    , olKey
    , olType
    , olOauthToken
    , olFields
    , olAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgunitsList@ which the
-- 'OrgunitsList' request conforms to.
type OrgunitsListAPI =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           QueryParam "orgUnitPath" Text :>
             QueryParam "type" Text :> Get '[JSON] OrgUnits

-- | Retrieve all Organization Units
--
-- /See:/ 'orgunitsList' smart constructor.
data OrgunitsList = OrgunitsList
    { _olQuotaUser   :: !(Maybe Text)
    , _olPrettyPrint :: !Bool
    , _olUserIp      :: !(Maybe Text)
    , _olOrgUnitPath :: !Text
    , _olCustomerId  :: !Text
    , _olKey         :: !(Maybe Text)
    , _olType        :: !(Maybe Text)
    , _olOauthToken  :: !(Maybe Text)
    , _olFields      :: !(Maybe Text)
    , _olAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUserIp'
--
-- * 'olOrgUnitPath'
--
-- * 'olCustomerId'
--
-- * 'olKey'
--
-- * 'olType'
--
-- * 'olOauthToken'
--
-- * 'olFields'
--
-- * 'olAlt'
orgunitsList
    :: Text -- ^ 'customerId'
    -> OrgunitsList
orgunitsList pOlCustomerId_ =
    OrgunitsList
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUserIp = Nothing
    , _olOrgUnitPath = ""
    , _olCustomerId = pOlCustomerId_
    , _olKey = Nothing
    , _olType = Nothing
    , _olOauthToken = Nothing
    , _olFields = Nothing
    , _olAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OrgunitsList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OrgunitsList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIp :: Lens' OrgunitsList' (Maybe Text)
olUserIp = lens _olUserIp (\ s a -> s{_olUserIp = a})

-- | the URL-encoded organization unit\'s path or its Id
olOrgUnitPath :: Lens' OrgunitsList' Text
olOrgUnitPath
  = lens _olOrgUnitPath
      (\ s a -> s{_olOrgUnitPath = a})

-- | Immutable id of the Google Apps account
olCustomerId :: Lens' OrgunitsList' Text
olCustomerId
  = lens _olCustomerId (\ s a -> s{_olCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OrgunitsList' (Maybe Text)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Whether to return all sub-organizations or just immediate children
olType :: Lens' OrgunitsList' (Maybe Text)
olType = lens _olType (\ s a -> s{_olType = a})

-- | OAuth 2.0 token for the current user.
olOauthToken :: Lens' OrgunitsList' (Maybe Text)
olOauthToken
  = lens _olOauthToken (\ s a -> s{_olOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OrgunitsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | Data format for the response.
olAlt :: Lens' OrgunitsList' Text
olAlt = lens _olAlt (\ s a -> s{_olAlt = a})

instance GoogleRequest OrgunitsList' where
        type Rs OrgunitsList' = OrgUnits
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsList{..}
          = go _olQuotaUser _olPrettyPrint _olUserIp
              (Just _olOrgUnitPath)
              _olCustomerId
              _olKey
              _olType
              _olOauthToken
              _olFields
              _olAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OrgunitsListAPI) r
                      u
