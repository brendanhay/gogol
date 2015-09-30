{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Orgunits.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Organization Unit. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgunitsPatch@.
module Directory.Orgunits.Patch
    (
    -- * REST Resource
      OrgunitsPatchAPI

    -- * Creating a Request
    , orgunitsPatch
    , OrgunitsPatch

    -- * Request Lenses
    , opQuotaUser
    , opPrettyPrint
    , opUserIp
    , opOrgUnitPath
    , opCustomerId
    , opKey
    , opOauthToken
    , opFields
    , opAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgunitsPatch@ which the
-- 'OrgunitsPatch' request conforms to.
type OrgunitsPatchAPI =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits{" :>
           "orgUnitPath*}" :> Patch '[JSON] OrgUnit

-- | Update Organization Unit. This method supports patch semantics.
--
-- /See:/ 'orgunitsPatch' smart constructor.
data OrgunitsPatch = OrgunitsPatch
    { _opQuotaUser   :: !(Maybe Text)
    , _opPrettyPrint :: !Bool
    , _opUserIp      :: !(Maybe Text)
    , _opOrgUnitPath :: !Text
    , _opCustomerId  :: !Text
    , _opKey         :: !(Maybe Text)
    , _opOauthToken  :: !(Maybe Text)
    , _opFields      :: !(Maybe Text)
    , _opAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opQuotaUser'
--
-- * 'opPrettyPrint'
--
-- * 'opUserIp'
--
-- * 'opOrgUnitPath'
--
-- * 'opCustomerId'
--
-- * 'opKey'
--
-- * 'opOauthToken'
--
-- * 'opFields'
--
-- * 'opAlt'
orgunitsPatch
    :: Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgunitsPatch
orgunitsPatch pOpOrgUnitPath_ pOpCustomerId_ =
    OrgunitsPatch
    { _opQuotaUser = Nothing
    , _opPrettyPrint = True
    , _opUserIp = Nothing
    , _opOrgUnitPath = pOpOrgUnitPath_
    , _opCustomerId = pOpCustomerId_
    , _opKey = Nothing
    , _opOauthToken = Nothing
    , _opFields = Nothing
    , _opAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
opQuotaUser :: Lens' OrgunitsPatch' (Maybe Text)
opQuotaUser
  = lens _opQuotaUser (\ s a -> s{_opQuotaUser = a})

-- | Returns response with indentations and line breaks.
opPrettyPrint :: Lens' OrgunitsPatch' Bool
opPrettyPrint
  = lens _opPrettyPrint
      (\ s a -> s{_opPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
opUserIp :: Lens' OrgunitsPatch' (Maybe Text)
opUserIp = lens _opUserIp (\ s a -> s{_opUserIp = a})

-- | Full path of the organization unit or its Id
opOrgUnitPath :: Lens' OrgunitsPatch' Text
opOrgUnitPath
  = lens _opOrgUnitPath
      (\ s a -> s{_opOrgUnitPath = a})

-- | Immutable id of the Google Apps account
opCustomerId :: Lens' OrgunitsPatch' Text
opCustomerId
  = lens _opCustomerId (\ s a -> s{_opCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
opKey :: Lens' OrgunitsPatch' (Maybe Text)
opKey = lens _opKey (\ s a -> s{_opKey = a})

-- | OAuth 2.0 token for the current user.
opOauthToken :: Lens' OrgunitsPatch' (Maybe Text)
opOauthToken
  = lens _opOauthToken (\ s a -> s{_opOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
opFields :: Lens' OrgunitsPatch' (Maybe Text)
opFields = lens _opFields (\ s a -> s{_opFields = a})

-- | Data format for the response.
opAlt :: Lens' OrgunitsPatch' Text
opAlt = lens _opAlt (\ s a -> s{_opAlt = a})

instance GoogleRequest OrgunitsPatch' where
        type Rs OrgunitsPatch' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsPatch{..}
          = go _opQuotaUser _opPrettyPrint _opUserIp
              _opOrgUnitPath
              _opCustomerId
              _opKey
              _opOauthToken
              _opFields
              _opAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OrgunitsPatchAPI) r
                      u
