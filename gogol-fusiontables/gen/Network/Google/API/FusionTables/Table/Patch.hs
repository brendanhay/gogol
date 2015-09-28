{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Table.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.patch@.
module Network.Google.API.FusionTables.Table.Patch
    (
    -- * REST Resource
      TablePatchAPI

    -- * Creating a Request
    , tablePatch'
    , TablePatch'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIp
    , tpReplaceViewDefinition
    , tpKey
    , tpOauthToken
    , tpTableId
    , tpFields
    , tpAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.table.patch which the
-- 'TablePatch'' request conforms to.
type TablePatchAPI =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "replaceViewDefinition" Bool :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Patch '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
--
-- /See:/ 'tablePatch'' smart constructor.
data TablePatch' = TablePatch'
    { _tpQuotaUser             :: !(Maybe Text)
    , _tpPrettyPrint           :: !Bool
    , _tpUserIp                :: !(Maybe Text)
    , _tpReplaceViewDefinition :: !(Maybe Bool)
    , _tpKey                   :: !(Maybe Text)
    , _tpOauthToken            :: !(Maybe Text)
    , _tpTableId               :: !Text
    , _tpFields                :: !(Maybe Text)
    , _tpAlt                   :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIp'
--
-- * 'tpReplaceViewDefinition'
--
-- * 'tpKey'
--
-- * 'tpOauthToken'
--
-- * 'tpTableId'
--
-- * 'tpFields'
--
-- * 'tpAlt'
tablePatch'
    :: Text -- ^ 'tableId'
    -> TablePatch'
tablePatch' pTpTableId_ =
    TablePatch'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIp = Nothing
    , _tpReplaceViewDefinition = Nothing
    , _tpKey = Nothing
    , _tpOauthToken = Nothing
    , _tpTableId = pTpTableId_
    , _tpFields = Nothing
    , _tpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TablePatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TablePatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIp :: Lens' TablePatch' (Maybe Text)
tpUserIp = lens _tpUserIp (\ s a -> s{_tpUserIp = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tpReplaceViewDefinition :: Lens' TablePatch' (Maybe Bool)
tpReplaceViewDefinition
  = lens _tpReplaceViewDefinition
      (\ s a -> s{_tpReplaceViewDefinition = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TablePatch' (Maybe Text)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | OAuth 2.0 token for the current user.
tpOauthToken :: Lens' TablePatch' (Maybe Text)
tpOauthToken
  = lens _tpOauthToken (\ s a -> s{_tpOauthToken = a})

-- | ID of the table that is being updated.
tpTableId :: Lens' TablePatch' Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TablePatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

-- | Data format for the response.
tpAlt :: Lens' TablePatch' Alt
tpAlt = lens _tpAlt (\ s a -> s{_tpAlt = a})

instance GoogleRequest TablePatch' where
        type Rs TablePatch' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TablePatch'{..}
          = go _tpQuotaUser (Just _tpPrettyPrint) _tpUserIp
              _tpReplaceViewDefinition
              _tpKey
              _tpOauthToken
              _tpTableId
              _tpFields
              (Just _tpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TablePatchAPI) r u
