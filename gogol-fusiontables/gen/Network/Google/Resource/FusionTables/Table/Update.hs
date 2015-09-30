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
module Network.Google.Resource.FusionTables.Table.Update
    (
    -- * REST Resource
      TableUpdateResource

    -- * Creating a Request
    , tableUpdate'
    , TableUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIp
    , tuReplaceViewDefinition
    , tuKey
    , tuOauthToken
    , tuTableId
    , tuFields
    , tuAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableUpdate@ which the
-- 'TableUpdate'' request conforms to.
type TableUpdateResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "replaceViewDefinition" Bool :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ 'tableUpdate'' smart constructor.
data TableUpdate' = TableUpdate'
    { _tuQuotaUser             :: !(Maybe Text)
    , _tuPrettyPrint           :: !Bool
    , _tuUserIp                :: !(Maybe Text)
    , _tuReplaceViewDefinition :: !(Maybe Bool)
    , _tuKey                   :: !(Maybe Text)
    , _tuOauthToken            :: !(Maybe Text)
    , _tuTableId               :: !Text
    , _tuFields                :: !(Maybe Text)
    , _tuAlt                   :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIp'
--
-- * 'tuReplaceViewDefinition'
--
-- * 'tuKey'
--
-- * 'tuOauthToken'
--
-- * 'tuTableId'
--
-- * 'tuFields'
--
-- * 'tuAlt'
tableUpdate'
    :: Text -- ^ 'tableId'
    -> TableUpdate'
tableUpdate' pTuTableId_ =
    TableUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIp = Nothing
    , _tuReplaceViewDefinition = Nothing
    , _tuKey = Nothing
    , _tuOauthToken = Nothing
    , _tuTableId = pTuTableId_
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TableUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TableUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TableUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tuReplaceViewDefinition :: Lens' TableUpdate' (Maybe Bool)
tuReplaceViewDefinition
  = lens _tuReplaceViewDefinition
      (\ s a -> s{_tuReplaceViewDefinition = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TableUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TableUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | ID of the table that is being updated.
tuTableId :: Lens' TableUpdate' Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TableUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TableUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TableUpdate' where
        type Rs TableUpdate' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIp
              _tuReplaceViewDefinition
              _tuKey
              _tuOauthToken
              _tuTableId
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TableUpdateResource)
                      r
                      u
