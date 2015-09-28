{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Table.Copy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Copies a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.copy@.
module Network.Google.API.FusionTables.Table.Copy
    (
    -- * REST Resource
      TableCopyAPI

    -- * Creating a Request
    , tableCopy'
    , TableCopy'

    -- * Request Lenses
    , tcQuotaUser
    , tcPrettyPrint
    , tcUserIp
    , tcKey
    , tcOauthToken
    , tcTableId
    , tcCopyPresentation
    , tcFields
    , tcAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.table.copy which the
-- 'TableCopy'' request conforms to.
type TableCopyAPI =
     "tables" :>
       Capture "tableId" Text :>
         "copy" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "copyPresentation" Bool :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Table

-- | Copies a table.
--
-- /See:/ 'tableCopy'' smart constructor.
data TableCopy' = TableCopy'
    { _tcQuotaUser        :: !(Maybe Text)
    , _tcPrettyPrint      :: !Bool
    , _tcUserIp           :: !(Maybe Text)
    , _tcKey              :: !(Maybe Text)
    , _tcOauthToken       :: !(Maybe Text)
    , _tcTableId          :: !Text
    , _tcCopyPresentation :: !(Maybe Bool)
    , _tcFields           :: !(Maybe Text)
    , _tcAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableCopy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcQuotaUser'
--
-- * 'tcPrettyPrint'
--
-- * 'tcUserIp'
--
-- * 'tcKey'
--
-- * 'tcOauthToken'
--
-- * 'tcTableId'
--
-- * 'tcCopyPresentation'
--
-- * 'tcFields'
--
-- * 'tcAlt'
tableCopy'
    :: Text -- ^ 'tableId'
    -> TableCopy'
tableCopy' pTcTableId_ =
    TableCopy'
    { _tcQuotaUser = Nothing
    , _tcPrettyPrint = True
    , _tcUserIp = Nothing
    , _tcKey = Nothing
    , _tcOauthToken = Nothing
    , _tcTableId = pTcTableId_
    , _tcCopyPresentation = Nothing
    , _tcFields = Nothing
    , _tcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tcQuotaUser :: Lens' TableCopy' (Maybe Text)
tcQuotaUser
  = lens _tcQuotaUser (\ s a -> s{_tcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tcPrettyPrint :: Lens' TableCopy' Bool
tcPrettyPrint
  = lens _tcPrettyPrint
      (\ s a -> s{_tcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tcUserIp :: Lens' TableCopy' (Maybe Text)
tcUserIp = lens _tcUserIp (\ s a -> s{_tcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tcKey :: Lens' TableCopy' (Maybe Text)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | OAuth 2.0 token for the current user.
tcOauthToken :: Lens' TableCopy' (Maybe Text)
tcOauthToken
  = lens _tcOauthToken (\ s a -> s{_tcOauthToken = a})

-- | ID of the table that is being copied.
tcTableId :: Lens' TableCopy' Text
tcTableId
  = lens _tcTableId (\ s a -> s{_tcTableId = a})

-- | Whether to also copy tabs, styles, and templates. Default is false.
tcCopyPresentation :: Lens' TableCopy' (Maybe Bool)
tcCopyPresentation
  = lens _tcCopyPresentation
      (\ s a -> s{_tcCopyPresentation = a})

-- | Selector specifying which fields to include in a partial response.
tcFields :: Lens' TableCopy' (Maybe Text)
tcFields = lens _tcFields (\ s a -> s{_tcFields = a})

-- | Data format for the response.
tcAlt :: Lens' TableCopy' Alt
tcAlt = lens _tcAlt (\ s a -> s{_tcAlt = a})

instance GoogleRequest TableCopy' where
        type Rs TableCopy' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableCopy'{..}
          = go _tcQuotaUser (Just _tcPrettyPrint) _tcUserIp
              _tcKey
              _tcOauthToken
              _tcTableId
              _tcCopyPresentation
              _tcFields
              (Just _tcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TableCopyAPI) r u
