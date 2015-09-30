{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Pages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one blog page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesGet@.
module Blogger.Pages.Get
    (
    -- * REST Resource
      PagesGetAPI

    -- * Creating a Request
    , pagesGet
    , PagesGet

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgBlogId
    , pgPageId
    , pgKey
    , pgView
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesGet@ which the
-- 'PagesGet' request conforms to.
type PagesGetAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "view" Text :> Get '[JSON] Page

-- | Gets one blog page by ID.
--
-- /See:/ 'pagesGet' smart constructor.
data PagesGet = PagesGet
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgBlogId      :: !Text
    , _pgPageId      :: !Text
    , _pgKey         :: !(Maybe Text)
    , _pgView        :: !(Maybe Text)
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgBlogId'
--
-- * 'pgPageId'
--
-- * 'pgKey'
--
-- * 'pgView'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
pagesGet
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesGet
pagesGet pPgBlogId_ pPgPageId_ =
    PagesGet
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgBlogId = pPgBlogId_
    , _pgPageId = pPgPageId_
    , _pgKey = Nothing
    , _pgView = Nothing
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PagesGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PagesGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PagesGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | ID of the blog containing the page.
pgBlogId :: Lens' PagesGet' Text
pgBlogId = lens _pgBlogId (\ s a -> s{_pgBlogId = a})

-- | The ID of the page to get.
pgPageId :: Lens' PagesGet' Text
pgPageId = lens _pgPageId (\ s a -> s{_pgPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PagesGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

pgView :: Lens' PagesGet' (Maybe Text)
pgView = lens _pgView (\ s a -> s{_pgView = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PagesGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PagesGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PagesGet' Text
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PagesGet' where
        type Rs PagesGet' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesGet{..}
          = go _pgQuotaUser _pgPrettyPrint _pgUserIp _pgBlogId
              _pgPageId
              _pgKey
              _pgView
              _pgOauthToken
              _pgFields
              _pgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PagesGetAPI) r u
