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
-- Module      : Network.Google.Resource.FusionTables.Table.Copy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Copies a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableCopy@.
module Network.Google.Resource.FusionTables.Table.Copy
    (
    -- * REST Resource
      TableCopyResource

    -- * Creating a Request
    , tableCopy'
    , TableCopy'

    -- * Request Lenses
    , tcQuotaUser
    , tcPrettyPrint
    , tcUserIP
    , tcKey
    , tcOAuthToken
    , tcTableId
    , tcCopyPresentation
    , tcFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableCopy@ which the
-- 'TableCopy'' request conforms to.
type TableCopyResource =
     "tables" :>
       Capture "tableId" Text :>
         "copy" :>
           QueryParam "copyPresentation" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Table

-- | Copies a table.
--
-- /See:/ 'tableCopy'' smart constructor.
data TableCopy' = TableCopy'
    { _tcQuotaUser        :: !(Maybe Text)
    , _tcPrettyPrint      :: !Bool
    , _tcUserIP           :: !(Maybe Text)
    , _tcKey              :: !(Maybe Key)
    , _tcOAuthToken       :: !(Maybe OAuthToken)
    , _tcTableId          :: !Text
    , _tcCopyPresentation :: !(Maybe Bool)
    , _tcFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableCopy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcQuotaUser'
--
-- * 'tcPrettyPrint'
--
-- * 'tcUserIP'
--
-- * 'tcKey'
--
-- * 'tcOAuthToken'
--
-- * 'tcTableId'
--
-- * 'tcCopyPresentation'
--
-- * 'tcFields'
tableCopy'
    :: Text -- ^ 'tableId'
    -> TableCopy'
tableCopy' pTcTableId_ =
    TableCopy'
    { _tcQuotaUser = Nothing
    , _tcPrettyPrint = True
    , _tcUserIP = Nothing
    , _tcKey = Nothing
    , _tcOAuthToken = Nothing
    , _tcTableId = pTcTableId_
    , _tcCopyPresentation = Nothing
    , _tcFields = Nothing
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
tcUserIP :: Lens' TableCopy' (Maybe Text)
tcUserIP = lens _tcUserIP (\ s a -> s{_tcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tcKey :: Lens' TableCopy' (Maybe Key)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | OAuth 2.0 token for the current user.
tcOAuthToken :: Lens' TableCopy' (Maybe OAuthToken)
tcOAuthToken
  = lens _tcOAuthToken (\ s a -> s{_tcOAuthToken = a})

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

instance GoogleAuth TableCopy' where
        authKey = tcKey . _Just
        authToken = tcOAuthToken . _Just

instance GoogleRequest TableCopy' where
        type Rs TableCopy' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableCopy'{..}
          = go _tcCopyPresentation _tcTableId _tcQuotaUser
              (Just _tcPrettyPrint)
              _tcUserIP
              _tcFields
              _tcKey
              _tcOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TableCopyResource)
                      r
                      u
