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
-- Module      : Network.Google.Resource.FusionTables.Column.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the name or type of an existing column. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnPatch@.
module Network.Google.Resource.FusionTables.Column.Patch
    (
    -- * REST Resource
      ColumnPatchResource

    -- * Creating a Request
    , columnPatch'
    , ColumnPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpKey
    , cpOAuthToken
    , cpTableId
    , cpColumnId
    , cpColumn
    , cpFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnPatch@ which the
-- 'ColumnPatch'' request conforms to.
type ColumnPatchResource =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Column :> Patch '[JSON] Column

-- | Updates the name or type of an existing column. This method supports
-- patch semantics.
--
-- /See:/ 'columnPatch'' smart constructor.
data ColumnPatch' = ColumnPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Key)
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpTableId     :: !Text
    , _cpColumnId    :: !Text
    , _cpColumn      :: !Column
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpKey'
--
-- * 'cpOAuthToken'
--
-- * 'cpTableId'
--
-- * 'cpColumnId'
--
-- * 'cpColumn'
--
-- * 'cpFields'
columnPatch'
    :: Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> Column -- ^ 'Column'
    -> ColumnPatch'
columnPatch' pCpTableId_ pCpColumnId_ pCpColumn_ =
    ColumnPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpKey = Nothing
    , _cpOAuthToken = Nothing
    , _cpTableId = pCpTableId_
    , _cpColumnId = pCpColumnId_
    , _cpColumn = pCpColumn_
    , _cpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' ColumnPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' ColumnPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIP :: Lens' ColumnPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ColumnPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' ColumnPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Table for which the column is being updated.
cpTableId :: Lens' ColumnPatch' Text
cpTableId
  = lens _cpTableId (\ s a -> s{_cpTableId = a})

-- | Name or identifier for the column that is being updated.
cpColumnId :: Lens' ColumnPatch' Text
cpColumnId
  = lens _cpColumnId (\ s a -> s{_cpColumnId = a})

-- | Multipart request metadata.
cpColumn :: Lens' ColumnPatch' Column
cpColumn = lens _cpColumn (\ s a -> s{_cpColumn = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ColumnPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth ColumnPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest ColumnPatch' where
        type Rs ColumnPatch' = Column
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint) _cpUserIP
              _cpKey
              _cpOAuthToken
              _cpTableId
              _cpColumnId
              _cpFields
              (Just AltJSON)
              _cpColumn
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ColumnPatchResource)
                      r
                      u
