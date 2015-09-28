{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Template.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new template for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.insert@.
module Network.Google.API.FusionTables.Template.Insert
    (
    -- * REST Resource
      TemplateInsertAPI

    -- * Creating a Request
    , templateInsert'
    , TemplateInsert'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tOauthToken
    , tTableId
    , tFields
    , tAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.template.insert which the
-- 'TemplateInsert'' request conforms to.
type TemplateInsertAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Template

-- | Creates a new template for the table.
--
-- /See:/ 'templateInsert'' smart constructor.
data TemplateInsert' = TemplateInsert'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tOauthToken  :: !(Maybe Text)
    , _tTableId     :: !Text
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tOauthToken'
--
-- * 'tTableId'
--
-- * 'tFields'
--
-- * 'tAlt'
templateInsert'
    :: Text -- ^ 'tableId'
    -> TemplateInsert'
templateInsert' pTTableId_ =
    TemplateInsert'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tOauthToken = Nothing
    , _tTableId = pTTableId_
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TemplateInsert' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TemplateInsert' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TemplateInsert' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TemplateInsert' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TemplateInsert' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Table for which a new template is being created
tTableId :: Lens' TemplateInsert' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TemplateInsert' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TemplateInsert' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TemplateInsert' where
        type Rs TemplateInsert' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateInsert'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tUserIp _tKey
              _tOauthToken
              _tTableId
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateInsertAPI)
                      r
                      u
