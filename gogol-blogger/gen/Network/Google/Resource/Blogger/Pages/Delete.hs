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
-- Module      : Network.Google.Resource.Blogger.Pages.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesDelete@.
module Network.Google.Resource.Blogger.Pages.Delete
    (
    -- * REST Resource
      PagesDeleteResource

    -- * Creating a Request
    , pagesDelete'
    , PagesDelete'

    -- * Request Lenses
    , pddQuotaUser
    , pddPrettyPrint
    , pddUserIP
    , pddBlogId
    , pddPageId
    , pddKey
    , pddOAuthToken
    , pddFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesDelete@ which the
-- 'PagesDelete'' request conforms to.
type PagesDeleteResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a page by ID.
--
-- /See:/ 'pagesDelete'' smart constructor.
data PagesDelete' = PagesDelete'
    { _pddQuotaUser   :: !(Maybe Text)
    , _pddPrettyPrint :: !Bool
    , _pddUserIP      :: !(Maybe Text)
    , _pddBlogId      :: !Text
    , _pddPageId      :: !Text
    , _pddKey         :: !(Maybe Key)
    , _pddOAuthToken  :: !(Maybe OAuthToken)
    , _pddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddUserIP'
--
-- * 'pddBlogId'
--
-- * 'pddPageId'
--
-- * 'pddKey'
--
-- * 'pddOAuthToken'
--
-- * 'pddFields'
pagesDelete'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesDelete'
pagesDelete' pPddBlogId_ pPddPageId_ =
    PagesDelete'
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddUserIP = Nothing
    , _pddBlogId = pPddBlogId_
    , _pddPageId = pPddPageId_
    , _pddKey = Nothing
    , _pddOAuthToken = Nothing
    , _pddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pddQuotaUser :: Lens' PagesDelete' (Maybe Text)
pddQuotaUser
  = lens _pddQuotaUser (\ s a -> s{_pddQuotaUser = a})

-- | Returns response with indentations and line breaks.
pddPrettyPrint :: Lens' PagesDelete' Bool
pddPrettyPrint
  = lens _pddPrettyPrint
      (\ s a -> s{_pddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pddUserIP :: Lens' PagesDelete' (Maybe Text)
pddUserIP
  = lens _pddUserIP (\ s a -> s{_pddUserIP = a})

-- | The ID of the Blog.
pddBlogId :: Lens' PagesDelete' Text
pddBlogId
  = lens _pddBlogId (\ s a -> s{_pddBlogId = a})

-- | The ID of the Page.
pddPageId :: Lens' PagesDelete' Text
pddPageId
  = lens _pddPageId (\ s a -> s{_pddPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' PagesDelete' (Maybe Key)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | OAuth 2.0 token for the current user.
pddOAuthToken :: Lens' PagesDelete' (Maybe OAuthToken)
pddOAuthToken
  = lens _pddOAuthToken
      (\ s a -> s{_pddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' PagesDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

instance GoogleAuth PagesDelete' where
        authKey = pddKey . _Just
        authToken = pddOAuthToken . _Just

instance GoogleRequest PagesDelete' where
        type Rs PagesDelete' = ()
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesDelete'{..}
          = go _pddBlogId _pddPageId _pddQuotaUser
              (Just _pddPrettyPrint)
              _pddUserIP
              _pddFields
              _pddKey
              _pddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PagesDeleteResource)
                      r
                      u
