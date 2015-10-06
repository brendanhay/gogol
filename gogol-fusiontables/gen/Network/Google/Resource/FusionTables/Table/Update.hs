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
    , tuUserIP
    , tuPayload
    , tuReplaceViewDefinition
    , tuKey
    , tuOAuthToken
    , tuTableId
    , tuFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableUpdate@ which the
-- 'TableUpdate'' request conforms to.
type TableUpdateResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "replaceViewDefinition" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Table :> Put '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ 'tableUpdate'' smart constructor.
data TableUpdate' = TableUpdate'
    { _tuQuotaUser             :: !(Maybe Text)
    , _tuPrettyPrint           :: !Bool
    , _tuUserIP                :: !(Maybe Text)
    , _tuPayload               :: !Table
    , _tuReplaceViewDefinition :: !(Maybe Bool)
    , _tuKey                   :: !(Maybe AuthKey)
    , _tuOAuthToken            :: !(Maybe OAuthToken)
    , _tuTableId               :: !Text
    , _tuFields                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIP'
--
-- * 'tuPayload'
--
-- * 'tuReplaceViewDefinition'
--
-- * 'tuKey'
--
-- * 'tuOAuthToken'
--
-- * 'tuTableId'
--
-- * 'tuFields'
tableUpdate'
    :: Table -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TableUpdate'
tableUpdate' pTuPayload_ pTuTableId_ =
    TableUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIP = Nothing
    , _tuPayload = pTuPayload_
    , _tuReplaceViewDefinition = Nothing
    , _tuKey = Nothing
    , _tuOAuthToken = Nothing
    , _tuTableId = pTuTableId_
    , _tuFields = Nothing
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
tuUserIP :: Lens' TableUpdate' (Maybe Text)
tuUserIP = lens _tuUserIP (\ s a -> s{_tuUserIP = a})

-- | Multipart request metadata.
tuPayload :: Lens' TableUpdate' Table
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

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
tuKey :: Lens' TableUpdate' (Maybe AuthKey)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | OAuth 2.0 token for the current user.
tuOAuthToken :: Lens' TableUpdate' (Maybe OAuthToken)
tuOAuthToken
  = lens _tuOAuthToken (\ s a -> s{_tuOAuthToken = a})

-- | ID of the table that is being updated.
tuTableId :: Lens' TableUpdate' Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TableUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

instance GoogleAuth TableUpdate' where
        authKey = tuKey . _Just
        authToken = tuOAuthToken . _Just

instance GoogleRequest TableUpdate' where
        type Rs TableUpdate' = Table
        request = requestWith fusionTablesRequest
        requestWith rq TableUpdate'{..}
          = go _tuTableId _tuReplaceViewDefinition _tuQuotaUser
              (Just _tuPrettyPrint)
              _tuUserIP
              _tuFields
              _tuKey
              _tuOAuthToken
              (Just AltJSON)
              _tuPayload
          where go
                  = clientBuild (Proxy :: Proxy TableUpdateResource) rq
