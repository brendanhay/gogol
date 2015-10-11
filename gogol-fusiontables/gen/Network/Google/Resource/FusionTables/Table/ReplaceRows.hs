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
-- Module      : Network.Google.Resource.FusionTables.Table.ReplaceRows
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces rows of an existing table. Current rows remain visible until
-- all replacement rows are ready.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableReplaceRows@.
module Network.Google.Resource.FusionTables.Table.ReplaceRows
    (
    -- * REST Resource
      TableReplaceRowsResource

    -- * Creating a Request
    , tableReplaceRows'
    , TableReplaceRows'

    -- * Request Lenses
    , trrQuotaUser
    , trrPrettyPrint
    , trrUserIP
    , trrStartLine
    , trrEndLine
    , trrMedia
    , trrKey
    , trrOAuthToken
    , trrTableId
    , trrDelimiter
    , trrEncoding
    , trrIsStrict
    , trrFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableReplaceRows@ method which the
-- 'TableReplaceRows'' request conforms to.
type TableReplaceRowsResource =
     "tables" :>
       Capture "tableId" Text :>
         "replace" :>
           QueryParam "startLine" Int32 :>
             QueryParam "endLine" Int32 :>
               QueryParam "delimiter" Text :>
                 QueryParam "encoding" Text :>
                   QueryParam "isStrict" Bool :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[OctetStream] Stream :>
                                     Post '[JSON] Task

-- | Replaces rows of an existing table. Current rows remain visible until
-- all replacement rows are ready.
--
-- /See:/ 'tableReplaceRows'' smart constructor.
data TableReplaceRows' = TableReplaceRows'
    { _trrQuotaUser   :: !(Maybe Text)
    , _trrPrettyPrint :: !Bool
    , _trrUserIP      :: !(Maybe Text)
    , _trrStartLine   :: !(Maybe Int32)
    , _trrEndLine     :: !(Maybe Int32)
    , _trrMedia       :: !Stream
    , _trrKey         :: !(Maybe AuthKey)
    , _trrOAuthToken  :: !(Maybe OAuthToken)
    , _trrTableId     :: !Text
    , _trrDelimiter   :: !(Maybe Text)
    , _trrEncoding    :: !(Maybe Text)
    , _trrIsStrict    :: !(Maybe Bool)
    , _trrFields      :: !(Maybe Text)
    }

-- | Creates a value of 'TableReplaceRows'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrQuotaUser'
--
-- * 'trrPrettyPrint'
--
-- * 'trrUserIP'
--
-- * 'trrStartLine'
--
-- * 'trrEndLine'
--
-- * 'trrMedia'
--
-- * 'trrKey'
--
-- * 'trrOAuthToken'
--
-- * 'trrTableId'
--
-- * 'trrDelimiter'
--
-- * 'trrEncoding'
--
-- * 'trrIsStrict'
--
-- * 'trrFields'
tableReplaceRows'
    :: Stream -- ^ 'media'
    -> Text -- ^ 'tableId'
    -> TableReplaceRows'
tableReplaceRows' pTrrMedia_ pTrrTableId_ =
    TableReplaceRows'
    { _trrQuotaUser = Nothing
    , _trrPrettyPrint = True
    , _trrUserIP = Nothing
    , _trrStartLine = Nothing
    , _trrEndLine = Nothing
    , _trrMedia = pTrrMedia_
    , _trrKey = Nothing
    , _trrOAuthToken = Nothing
    , _trrTableId = pTrrTableId_
    , _trrDelimiter = Nothing
    , _trrEncoding = Nothing
    , _trrIsStrict = Nothing
    , _trrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
trrQuotaUser :: Lens' TableReplaceRows' (Maybe Text)
trrQuotaUser
  = lens _trrQuotaUser (\ s a -> s{_trrQuotaUser = a})

-- | Returns response with indentations and line breaks.
trrPrettyPrint :: Lens' TableReplaceRows' Bool
trrPrettyPrint
  = lens _trrPrettyPrint
      (\ s a -> s{_trrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
trrUserIP :: Lens' TableReplaceRows' (Maybe Text)
trrUserIP
  = lens _trrUserIP (\ s a -> s{_trrUserIP = a})

-- | The index of the first line from which to start importing, inclusive.
-- Default is 0.
trrStartLine :: Lens' TableReplaceRows' (Maybe Int32)
trrStartLine
  = lens _trrStartLine (\ s a -> s{_trrStartLine = a})

-- | The index of the line up to which data will be imported. Default is to
-- import the entire file. If endLine is negative, it is an offset from the
-- end of the file; the imported content will exclude the last endLine
-- lines.
trrEndLine :: Lens' TableReplaceRows' (Maybe Int32)
trrEndLine
  = lens _trrEndLine (\ s a -> s{_trrEndLine = a})

trrMedia :: Lens' TableReplaceRows' Stream
trrMedia = lens _trrMedia (\ s a -> s{_trrMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
trrKey :: Lens' TableReplaceRows' (Maybe AuthKey)
trrKey = lens _trrKey (\ s a -> s{_trrKey = a})

-- | OAuth 2.0 token for the current user.
trrOAuthToken :: Lens' TableReplaceRows' (Maybe OAuthToken)
trrOAuthToken
  = lens _trrOAuthToken
      (\ s a -> s{_trrOAuthToken = a})

-- | Table whose rows will be replaced.
trrTableId :: Lens' TableReplaceRows' Text
trrTableId
  = lens _trrTableId (\ s a -> s{_trrTableId = a})

-- | The delimiter used to separate cell values. This can only consist of a
-- single character. Default is ,.
trrDelimiter :: Lens' TableReplaceRows' (Maybe Text)
trrDelimiter
  = lens _trrDelimiter (\ s a -> s{_trrDelimiter = a})

-- | The encoding of the content. Default is UTF-8. Use \'auto-detect\' if
-- you are unsure of the encoding.
trrEncoding :: Lens' TableReplaceRows' (Maybe Text)
trrEncoding
  = lens _trrEncoding (\ s a -> s{_trrEncoding = a})

-- | Whether the imported CSV must have the same number of column values for
-- each row. If true, throws an exception if the CSV does not have the same
-- number of columns. If false, rows with fewer column values will be
-- padded with empty values. Default is true.
trrIsStrict :: Lens' TableReplaceRows' (Maybe Bool)
trrIsStrict
  = lens _trrIsStrict (\ s a -> s{_trrIsStrict = a})

-- | Selector specifying which fields to include in a partial response.
trrFields :: Lens' TableReplaceRows' (Maybe Text)
trrFields
  = lens _trrFields (\ s a -> s{_trrFields = a})

instance GoogleAuth TableReplaceRows' where
        _AuthKey = trrKey . _Just
        _AuthToken = trrOAuthToken . _Just

instance GoogleRequest TableReplaceRows' where
        type Rs TableReplaceRows' = Task
        request = requestWith fusionTablesRequest
        requestWith rq TableReplaceRows'{..}
          = go _trrTableId _trrStartLine _trrEndLine
              _trrDelimiter
              _trrEncoding
              _trrIsStrict
              _trrQuotaUser
              (Just _trrPrettyPrint)
              _trrUserIP
              _trrFields
              _trrKey
              _trrOAuthToken
              (Just AltJSON)
              _trrMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy TableReplaceRowsResource)
                      rq
