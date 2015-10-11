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
    , cpPayload
    , cpKey
    , cpOAuthToken
    , cpTableId
    , cpColumnId
    , cpFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnPatch@ method which the
-- 'ColumnPatch'' request conforms to.
type ColumnPatchResource =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
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
    , _cpPayload     :: !Column
    , _cpKey         :: !(Maybe AuthKey)
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpTableId     :: !Text
    , _cpColumnId    :: !Text
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cpPayload'
--
-- * 'cpKey'
--
-- * 'cpOAuthToken'
--
-- * 'cpTableId'
--
-- * 'cpColumnId'
--
-- * 'cpFields'
columnPatch'
    :: Column -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> ColumnPatch'
columnPatch' pCpPayload_ pCpTableId_ pCpColumnId_ =
    ColumnPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpPayload = pCpPayload_
    , _cpKey = Nothing
    , _cpOAuthToken = Nothing
    , _cpTableId = pCpTableId_
    , _cpColumnId = pCpColumnId_
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

-- | Multipart request metadata.
cpPayload :: Lens' ColumnPatch' Column
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ColumnPatch' (Maybe AuthKey)
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

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ColumnPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth ColumnPatch' where
        _AuthKey = cpKey . _Just
        _AuthToken = cpOAuthToken . _Just

instance GoogleRequest ColumnPatch' where
        type Rs ColumnPatch' = Column
        request = requestWith fusionTablesRequest
        requestWith rq ColumnPatch'{..}
          = go _cpTableId _cpColumnId _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientBuild (Proxy :: Proxy ColumnPatchResource) rq
