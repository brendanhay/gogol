{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Column.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified column.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnDelete@.
module FusionTables.Column.Delete
    (
    -- * REST Resource
      ColumnDeleteAPI

    -- * Creating a Request
    , columnDelete
    , ColumnDelete

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdKey
    , cdOauthToken
    , cdTableId
    , cdColumnId
    , cdFields
    , cdAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnDelete@ which the
-- 'ColumnDelete' request conforms to.
type ColumnDeleteAPI =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :> Delete '[JSON] ()

-- | Deletes the specified column.
--
-- /See:/ 'columnDelete' smart constructor.
data ColumnDelete = ColumnDelete
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIp      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Text)
    , _cdOauthToken  :: !(Maybe Text)
    , _cdTableId     :: !Text
    , _cdColumnId    :: !Text
    , _cdFields      :: !(Maybe Text)
    , _cdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdKey'
--
-- * 'cdOauthToken'
--
-- * 'cdTableId'
--
-- * 'cdColumnId'
--
-- * 'cdFields'
--
-- * 'cdAlt'
columnDelete
    :: Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> ColumnDelete
columnDelete pCdTableId_ pCdColumnId_ =
    ColumnDelete
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdKey = Nothing
    , _cdOauthToken = Nothing
    , _cdTableId = pCdTableId_
    , _cdColumnId = pCdColumnId_
    , _cdFields = Nothing
    , _cdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' ColumnDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' ColumnDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' ColumnDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' ColumnDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' ColumnDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Table from which the column is being deleted.
cdTableId :: Lens' ColumnDelete' Text
cdTableId
  = lens _cdTableId (\ s a -> s{_cdTableId = a})

-- | Name or identifier for the column being deleted.
cdColumnId :: Lens' ColumnDelete' Text
cdColumnId
  = lens _cdColumnId (\ s a -> s{_cdColumnId = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' ColumnDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' ColumnDelete' Text
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest ColumnDelete' where
        type Rs ColumnDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnDelete{..}
          = go _cdQuotaUser _cdPrettyPrint _cdUserIp _cdKey
              _cdOauthToken
              _cdTableId
              _cdColumnId
              _cdFields
              _cdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ColumnDeleteAPI) r
                      u
