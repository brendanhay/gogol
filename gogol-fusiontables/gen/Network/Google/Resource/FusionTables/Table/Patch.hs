{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Table.Patch
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
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTablePatch@.
module Network.Google.Resource.FusionTables.Table.Patch
    (
    -- * REST Resource
      TablePatchResource

    -- * Creating a Request
    , tablePatch'
    , TablePatch'

    -- * Request Lenses
    , tppQuotaUser
    , tppPrettyPrint
    , tppUserIP
    , tppPayload
    , tppReplaceViewDefinition
    , tppKey
    , tppOAuthToken
    , tppTableId
    , tppFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTablePatch@ which the
-- 'TablePatch'' request conforms to.
type TablePatchResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "replaceViewDefinition" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Table :> Patch '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
--
-- /See:/ 'tablePatch'' smart constructor.
data TablePatch' = TablePatch'
    { _tppQuotaUser             :: !(Maybe Text)
    , _tppPrettyPrint           :: !Bool
    , _tppUserIP                :: !(Maybe Text)
    , _tppPayload               :: !Table
    , _tppReplaceViewDefinition :: !(Maybe Bool)
    , _tppKey                   :: !(Maybe Key)
    , _tppOAuthToken            :: !(Maybe OAuthToken)
    , _tppTableId               :: !Text
    , _tppFields                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppQuotaUser'
--
-- * 'tppPrettyPrint'
--
-- * 'tppUserIP'
--
-- * 'tppPayload'
--
-- * 'tppReplaceViewDefinition'
--
-- * 'tppKey'
--
-- * 'tppOAuthToken'
--
-- * 'tppTableId'
--
-- * 'tppFields'
tablePatch'
    :: Table -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TablePatch'
tablePatch' pTppPayload_ pTppTableId_ =
    TablePatch'
    { _tppQuotaUser = Nothing
    , _tppPrettyPrint = True
    , _tppUserIP = Nothing
    , _tppPayload = pTppPayload_
    , _tppReplaceViewDefinition = Nothing
    , _tppKey = Nothing
    , _tppOAuthToken = Nothing
    , _tppTableId = pTppTableId_
    , _tppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tppQuotaUser :: Lens' TablePatch' (Maybe Text)
tppQuotaUser
  = lens _tppQuotaUser (\ s a -> s{_tppQuotaUser = a})

-- | Returns response with indentations and line breaks.
tppPrettyPrint :: Lens' TablePatch' Bool
tppPrettyPrint
  = lens _tppPrettyPrint
      (\ s a -> s{_tppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tppUserIP :: Lens' TablePatch' (Maybe Text)
tppUserIP
  = lens _tppUserIP (\ s a -> s{_tppUserIP = a})

-- | Multipart request metadata.
tppPayload :: Lens' TablePatch' Table
tppPayload
  = lens _tppPayload (\ s a -> s{_tppPayload = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tppReplaceViewDefinition :: Lens' TablePatch' (Maybe Bool)
tppReplaceViewDefinition
  = lens _tppReplaceViewDefinition
      (\ s a -> s{_tppReplaceViewDefinition = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tppKey :: Lens' TablePatch' (Maybe Key)
tppKey = lens _tppKey (\ s a -> s{_tppKey = a})

-- | OAuth 2.0 token for the current user.
tppOAuthToken :: Lens' TablePatch' (Maybe OAuthToken)
tppOAuthToken
  = lens _tppOAuthToken
      (\ s a -> s{_tppOAuthToken = a})

-- | ID of the table that is being updated.
tppTableId :: Lens' TablePatch' Text
tppTableId
  = lens _tppTableId (\ s a -> s{_tppTableId = a})

-- | Selector specifying which fields to include in a partial response.
tppFields :: Lens' TablePatch' (Maybe Text)
tppFields
  = lens _tppFields (\ s a -> s{_tppFields = a})

instance GoogleAuth TablePatch' where
        authKey = tppKey . _Just
        authToken = tppOAuthToken . _Just

instance GoogleRequest TablePatch' where
        type Rs TablePatch' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TablePatch'{..}
          = go _tppTableId _tppReplaceViewDefinition
              _tppQuotaUser
              (Just _tppPrettyPrint)
              _tppUserIP
              _tppFields
              _tppKey
              _tppOAuthToken
              (Just AltJSON)
              _tppPayload
          where go
                  = clientWithRoute (Proxy :: Proxy TablePatchResource)
                      r
                      u
