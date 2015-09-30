{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module FusionTables.Column.Patch
    (
    -- * REST Resource
      ColumnPatchAPI

    -- * Creating a Request
    , columnPatch
    , ColumnPatch

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpKey
    , cpOauthToken
    , cpTableId
    , cpColumnId
    , cpFields
    , cpAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnPatch@ which the
-- 'ColumnPatch' request conforms to.
type ColumnPatchAPI =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :> Patch '[JSON] Column

-- | Updates the name or type of an existing column. This method supports
-- patch semantics.
--
-- /See:/ 'columnPatch' smart constructor.
data ColumnPatch = ColumnPatch
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Text)
    , _cpOauthToken  :: !(Maybe Text)
    , _cpTableId     :: !Text
    , _cpColumnId    :: !Text
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpKey'
--
-- * 'cpOauthToken'
--
-- * 'cpTableId'
--
-- * 'cpColumnId'
--
-- * 'cpFields'
--
-- * 'cpAlt'
columnPatch
    :: Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> ColumnPatch
columnPatch pCpTableId_ pCpColumnId_ =
    ColumnPatch
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpKey = Nothing
    , _cpOauthToken = Nothing
    , _cpTableId = pCpTableId_
    , _cpColumnId = pCpColumnId_
    , _cpFields = Nothing
    , _cpAlt = "json"
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
cpUserIp :: Lens' ColumnPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ColumnPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' ColumnPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

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

-- | Data format for the response.
cpAlt :: Lens' ColumnPatch' Text
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest ColumnPatch' where
        type Rs ColumnPatch' = Column
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnPatch{..}
          = go _cpQuotaUser _cpPrettyPrint _cpUserIp _cpKey
              _cpOauthToken
              _cpTableId
              _cpColumnId
              _cpFields
              _cpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ColumnPatchAPI) r u
