{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Table.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableUpdate@.
module FusionTables.Table.Update
    (
    -- * REST Resource
      TableUpdateAPI

    -- * Creating a Request
    , tableUpdate
    , TableUpdate

    -- * Request Lenses
    , tuuQuotaUser
    , tuuPrettyPrint
    , tuuUserIp
    , tuuReplaceViewDefinition
    , tuuKey
    , tuuOauthToken
    , tuuTableId
    , tuuFields
    , tuuAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableUpdate@ which the
-- 'TableUpdate' request conforms to.
type TableUpdateAPI =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "replaceViewDefinition" Bool :>
           Put '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ 'tableUpdate' smart constructor.
data TableUpdate = TableUpdate
    { _tuuQuotaUser             :: !(Maybe Text)
    , _tuuPrettyPrint           :: !Bool
    , _tuuUserIp                :: !(Maybe Text)
    , _tuuReplaceViewDefinition :: !(Maybe Bool)
    , _tuuKey                   :: !(Maybe Text)
    , _tuuOauthToken            :: !(Maybe Text)
    , _tuuTableId               :: !Text
    , _tuuFields                :: !(Maybe Text)
    , _tuuAlt                   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuuQuotaUser'
--
-- * 'tuuPrettyPrint'
--
-- * 'tuuUserIp'
--
-- * 'tuuReplaceViewDefinition'
--
-- * 'tuuKey'
--
-- * 'tuuOauthToken'
--
-- * 'tuuTableId'
--
-- * 'tuuFields'
--
-- * 'tuuAlt'
tableUpdate
    :: Text -- ^ 'tableId'
    -> TableUpdate
tableUpdate pTuuTableId_ =
    TableUpdate
    { _tuuQuotaUser = Nothing
    , _tuuPrettyPrint = True
    , _tuuUserIp = Nothing
    , _tuuReplaceViewDefinition = Nothing
    , _tuuKey = Nothing
    , _tuuOauthToken = Nothing
    , _tuuTableId = pTuuTableId_
    , _tuuFields = Nothing
    , _tuuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuuQuotaUser :: Lens' TableUpdate' (Maybe Text)
tuuQuotaUser
  = lens _tuuQuotaUser (\ s a -> s{_tuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuuPrettyPrint :: Lens' TableUpdate' Bool
tuuPrettyPrint
  = lens _tuuPrettyPrint
      (\ s a -> s{_tuuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuuUserIp :: Lens' TableUpdate' (Maybe Text)
tuuUserIp
  = lens _tuuUserIp (\ s a -> s{_tuuUserIp = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tuuReplaceViewDefinition :: Lens' TableUpdate' (Maybe Bool)
tuuReplaceViewDefinition
  = lens _tuuReplaceViewDefinition
      (\ s a -> s{_tuuReplaceViewDefinition = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuuKey :: Lens' TableUpdate' (Maybe Text)
tuuKey = lens _tuuKey (\ s a -> s{_tuuKey = a})

-- | OAuth 2.0 token for the current user.
tuuOauthToken :: Lens' TableUpdate' (Maybe Text)
tuuOauthToken
  = lens _tuuOauthToken
      (\ s a -> s{_tuuOauthToken = a})

-- | ID of the table that is being updated.
tuuTableId :: Lens' TableUpdate' Text
tuuTableId
  = lens _tuuTableId (\ s a -> s{_tuuTableId = a})

-- | Selector specifying which fields to include in a partial response.
tuuFields :: Lens' TableUpdate' (Maybe Text)
tuuFields
  = lens _tuuFields (\ s a -> s{_tuuFields = a})

-- | Data format for the response.
tuuAlt :: Lens' TableUpdate' Text
tuuAlt = lens _tuuAlt (\ s a -> s{_tuuAlt = a})

instance GoogleRequest TableUpdate' where
        type Rs TableUpdate' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableUpdate{..}
          = go _tuuQuotaUser _tuuPrettyPrint _tuuUserIp
              _tuuReplaceViewDefinition
              _tuuKey
              _tuuOauthToken
              _tuuTableId
              _tuuFields
              _tuuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TableUpdateAPI) r u
